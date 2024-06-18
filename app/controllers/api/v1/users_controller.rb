require 'csv'

# Controller untuk menangani operasi CRUD pada model User
class Api::V1::UsersController < ApplicationController
   before_action :set_user, only: [:show, :update, :destroy]

   # Menampilkan daftar semua pengguna
   def index
      @users = User.all
      total_users = @users.count

      # Mengembalikan kecuali jika filter atau paginasi pengguna gagal
      return unless filter_users && pagination_users

      total_search_data = @users.count

      # Mengirimkan respon berisi data pengguna dengan detail paginasi atau pesan lengkap
      render_response(
         @users,
         params[:search] || params[:page] ? "Page #{@page_number} of #{@total_pages} pages loaded successfully." : "All user data is successfully displayed",
         amount: total_users,
         current_page: @page_number,
         total_pages: @total_pages,
         total_search_data: total_search_data,
         )
   rescue ActiveRecord::StatementInvalid => e
      # Menangani error query yang tidak valid
      render_error(400, "Invalid search query")
   end

   # Menampilkan data pengguna berdasarkan ID
   def show
      render_response(@user, "User data with id = '#{params[:id]}' showed successfully")
   end

   # Membuat pengguna baru atau mengupdate pengguna dalam jumlah besar
   def create
      handle_bulk_create_or_update(params[:add_users], :create)
   end

   # Menambahkan pengguna dari file CSV
   def add_users_from_csv
      handle_csv_upload(params[:add_users_csv], :create)
   end

   # Mengupdate pengguna dari file CSV
   def update_users_from_csv
      handle_csv_upload(params[:edit_users_csv], :update)
   end

   # Mengupdate data pengguna berdasarkan ID
   def update
      update_user
   end

   # Menghapus pengguna berdasarkan ID
   def destroy
      destroy_user
   end

   # Menghapus semua data pengguna
   def clear
      @users = User.all
      clear_users
   end

   private

   # Mengambil data pengguna berdasarkan ID
   def set_user
      @user = User.find(params[:id])
   rescue ActiveRecord::RecordNotFound
      render_error(404, "User with id = '#{params[:id]}' not found")
   end

   # Mendefinisikan parameter yang diizinkan untuk pengguna
   def user_params
      params.require(:user).permit(:username, :password, :email)
   end

   # Memfilter pengguna berdasarkan query pencarian
   def filter_users
      if params[:search].present?
         search_query = params[:search]
         @users = @users.where("user_code ILIKE ? OR username ILIKE ?", "%#{search_query}%", "%#{search_query}%")
         if @users.empty?
            render_error(404, "No users found matching the search query")
            return false
         end
      end

      @users = @users.order(Arel.sql("CAST(SUBSTRING(user_code FROM '[0-9]+') AS INTEGER)"))
      true
   end

   # Melakukan paginasi pada data pengguna
   def pagination_users
      if params[:page].present?
         per_page = 10
         @page_number = params[:page].to_i
         @page_number = [@page_number, 1].max
         offset = (@page_number - 1) * per_page

         filtered_count = @users.count
         @total_pages = (filtered_count.to_f / per_page.to_i).ceil

         if @page_number > @total_pages
            render_error(400, "Page number exceeds total pages")
            return false
         end

         @users = @users.offset(offset).limit(per_page)
      else
         @page_number = 1
         @total_pages = 1
      end
      true
   end

   # Menangani proses pembuatan atau pembaruan pengguna dalam jumlah besar
   def handle_bulk_create_or_update(users_data, action)
      processed_users, error_messages = process_users(users_data, action)

      handle_processed_users(processed_users, error_messages, action)
   end

   # Mengunggah dan memproses data pengguna dari file CSV
   def handle_csv_upload(csv_file, action)
      processed_users, error_messages = [], {}

      CSV.foreach(csv_file.path, headers: true).with_index(1) do |row, index|
         user_code = row['user_code']
         @user = action == :create ? User.new : User.find_by(user_code: user_code)

         if @user.present?
            @user.attributes = row.to_hash.slice('username', 'password', 'email')
            @user.id = SecureRandom.uuid if action == :create

            processed_users << @user if @user.valid?
            error_messages["user_data_index_#{index}"] = format_error_messages(@user.errors.full_messages, index) unless @user.valid?
         else
            error_messages["user_data_index_#{index}"] = ["User not found at index #{index}"]
         end
      end

      handle_processed_users(processed_users, error_messages, action)
   end

   # Memproses data pengguna untuk pembuatan atau pembaruan
   def process_users(users_data, action)
      processed_users, error_messages = [], {}

      users_data.each_with_index do |user_data, index|
         @user = action == :create ? User.new(user_data.permit(:username, :password, :email)) : User.find_by(user_code: user_data[:user_code])
         @user.id = SecureRandom.uuid if action == :create

         if @user.valid?
            processed_users << @user
         else
            error_messages["user_data_index_#{index + 1}"] = format_error_messages(@user.errors.full_messages, index + 1)
         end
      end

      [processed_users, error_messages]
   end

   # Menangani hasil proses pembuatan atau pembaruan pengguna
   def handle_processed_users(processed_users, error_messages, action)
      if error_messages.empty?
         processed_users.each(&:save)
         message = action == :create ? "Users added successfully" : "Users updated successfully"
         render_response(processed_users, message)
      else
         render_error(400, error_messages)
      end
   end

   # Mengupdate data pengguna dan mengirimkan respon
   def update_user
      if @user.update(user_params)
         render_response(@user, "User data with id = '#{@user.id}' updated successfully")
      else
         render_error(400, @user.errors.full_messages)
      end
   end

   # Menghapus data pengguna dan mengirimkan respon
   def destroy_user
      if @user.present?
         @user.destroy
         render_response(@user, "User id = '#{@user.id}' deleted successfully")
      else
         render_error(400, "User with id = '#{params[:id]}' not found")
      end
   end

   # Menghapus semua data pengguna dan mengirimkan respon
   def clear_users
      if @users.present?
         deleted_users = @users.map(&:attributes)
         @users.destroy_all
         render_response(deleted_users, "All users data deleted successfully")
      else
         render_error(400, "Users data not found")
      end
   end

   # Memformat pesan error
   def format_error_messages(messages, index)
      messages.flat_map do |msg|
         case msg
         when /is not a valid email format/
            ["Email is not a valid email format at index #{index}", "Email valid format example: username@mailserver.domain"]
         else
            "#{msg} at index #{index}"
         end
      end
   end

   # Mengirimkan respon sukses
   def render_response(data, message, additional_info = {})
      response = {
         status: 'success',
         status_code: 200,
         message: message,
         users: data,
         path: request.original_url,
         amount: data.is_a?(Array) ? data.count : 1
      }

      if request.get?
         response.merge!(additional_info)
      end

      render json: response
   end

   # Mengirimkan respon error
   def render_error(status_code, message)
      render json: {
         status: 'failed',
         status_code: status_code,
         message: message,
         path: request.original_url
      }, status: :not_found
   end
end
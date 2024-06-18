Rails.application.routes.draw do
  # Membuat namespace untuk API versi 1
  namespace :api do
    namespace :v1 do
      # Mendefinisikan rute untuk resources 'users'
      resources :users do
        collection do
          # Mendefinisikan rute untuk menampilkan semua pengguna
          get 'view', action: :index

          # Mendefinisikan rute untuk menampilkan data pengguna berdasarkan ID
          get 'view/:id', action: :show

          # Mendefinisikan rute untuk menambahkan pengguna baru
          post 'add', action: :create

          # Mendefinisikan rute untuk menambahkan pengguna dari file CSV
          post 'add/csv', action: :add_users_from_csv

          # Mendefinisikan rute untuk mengupdate pengguna dari file CSV
          post 'edit/csv', action: :update_users_from_csv

          # Mendefinisikan rute untuk mengupdate data pengguna  berdasarkan ID
          put 'edit/:id', action: :update

          # Mendefinisikan rute untuk menghapus data pengguna berdasarkan ID
          delete 'delete/:id', action: :destroy

          # Mendefinisikan rute untuk menghapus semua data pengguna
          delete 'clear', action: :clear
        end
      end
    end
  end
end

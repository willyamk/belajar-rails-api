class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    # Membuat tabel 'users' tanpa kolom 'id' default
    create_table :users, id: false do |t|
      # Menambahkan kolom 'id' dengan tipe string, panjang 36 karakter, dan menjadikannya sebagai primary key
      t.string :id, limit: 36, primary_key: true

      # Menambahkan kolom 'user_code' dengan tipe string, panjang 14 karakter
      t.string :user_code, limit: 14

      # Menambahkan kolom 'username' dengan tipe string, panjang 50 karakter
      t.string :username, limit: 50

      # Menambahkan kolom 'password' dengan tipe string, panjang 255 karakter
      t.string :password, limit: 255

      # Menambahkan kolom 'email' dengan tipe string, panjang 255 karakter
      t.string :email, limit: 255

      # Menambahkan kolom 'created_at' dan 'updated_at'
      t.timestamps
    end
  end
end

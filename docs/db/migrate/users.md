### Dokumentasi Script Migration `CreateUsers`

#### Deskripsi
Script ini adalah sebuah *migration* dalam framework Ruby on Rails menggunakan ActiveRecord. *Migration* digunakan untuk mengelola struktur database, seperti membuat, mengubah, atau menghapus tabel dan kolom.

#### Keterangan Script

1. **Membuat Tabel 'users'**
    - Tabel 'users' dibuat dengan menggunakan metode `create_table`.
    - Opsi `id: false` menonaktifkan kolom 'id' default yang dibuat oleh ActiveRecord.

2. **Menambahkan Kolom 'id'**
    - Kolom 'id' ditambahkan dengan tipe data string.
    - Panjang karakternya adalah 36 karakter.
    - Kolom 'id' dijadikan sebagai primary key.

3. **Menambahkan Kolom 'user_code'**
    - Kolom 'user_code' ditambahkan dengan tipe data string.
    - Panjang karakternya adalah 14 karakter.

4. **Menambahkan Kolom 'username'**
    - Kolom 'username' ditambahkan dengan tipe data string.
    - Panjang karakternya adalah 50 karakter.

5. **Menambahkan Kolom 'password'**
    - Kolom 'password' ditambahkan dengan tipe data string.
    - Panjang karakternya adalah 255 karakter.

6. **Menambahkan Kolom 'email'**
    - Kolom 'email' ditambahkan dengan tipe data string.
    - Panjang karakternya adalah 255 karakter.

7. **Menambahkan Kolom 'created_at' dan 'updated_at'**
    - ActiveRecord secara otomatis menambahkan kolom 'created_at' dan 'updated_at' yang bertipe data datetime. Ini digunakan untuk menandai waktu pembuatan dan pembaruan setiap rekaman.

#### Catatan Penting
- Pastikan untuk menjalankan migration ini pada lingkungan pengembangan terlebih dahulu dan melakukan tes untuk memastikan tidak ada kesalahan.
- Data sensitif seperti kata sandi (password) sebaiknya disimpan dengan metode hashing yang aman untuk keamanan aplikasi.
- Perhatikan batasan panjang karakter dan jenis data untuk setiap kolom sesuai kebutuhan aplikasi Anda.
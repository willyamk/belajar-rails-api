## Dokumentasi Proyek Ruby on Rails: Belajar Rails API

### Deskripsi
Proyek ini bertujuan untuk membangun sebuah API menggunakan Ruby on Rails. Ini mencakup langkah-langkah untuk membuat proyek, mengonfigurasi basis data, membuat model, controller, dan menjalankan server untuk mengakses API.

### Langkah-Langkah Pembuatan Proyek

1. **Membuat Proyek**
    - Gunakan perintah `rails new belajar-rails-api --api -T -d postgresql` untuk membuat proyek baru.
    - Opsi `--api` digunakan untuk menghasilkan proyek sebagai API tanpa penambahan fungsi web tradisional.
    - Opsi `-T` digunakan untuk menghilangkan pengujian bawaan yang dihasilkan oleh Rails.
    - Opsi `-d postgresql` digunakan untuk mengkonfigurasi basis data menggunakan PostgreSQL.

2. **Membuat Controller Users**
    - Gunakan perintah `rails generate controller Users` untuk membuat controller `Users`.
    - Controller ini akan menangani permintaan terkait entitas pengguna dalam API.

3. **Membuat Model User**
    - Gunakan perintah `rails generate model User user_code:string username:string password:string email:string` untuk membuat model `User`.
    - Model ini akan merepresentasikan entitas pengguna dalam basis data.
    - Properti yang didefinisikan adalah `user_code`, `username`, `password`, dan `email`.

4. **Konfigurasi Basis Data**
    - Gunakan perintah `rails db:create` untuk membuat basis data yang telah dikonfigurasi sebelumnya.
    - Ini akan membuat basis data PostgreSQL sesuai dengan konfigurasi dalam file `config/database.yml`.

5. **Migrasi Basis Data**
    - Gunakan perintah `rails db:migrate` untuk menjalankan semua *migration* yang tertunda.
    - Ini akan membuat tabel `users` dalam basis data sesuai dengan definisi dalam *migration*.

### Menjalankan Server

- Setelah membuat proyek dan mengkonfigurasi basis data, Anda dapat menjalankan server menggunakan perintah `rails server` atau `rails s`.
- Server akan berjalan di alamat default `http://localhost:3000`.
- Akses API yang telah dibangun dengan menggunakan URL-endpoint yang sesuai dengan rute-rute yang telah didefinisikan dalam file `config/routes.rb`.

### Catatan Penting
- Pastikan untuk mengonfigurasi proyek sesuai kebutuhan Anda, termasuk konfigurasi basis data dan jenis server yang akan digunakan.
- Sebelum memulai pengembangan, lakukan pengujian pada proyek dan pastikan semuanya berjalan dengan benar.
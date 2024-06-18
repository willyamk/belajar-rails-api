# Dokumentasi untuk Konfigurasi Routes

## Deskripsi
Konfigurasi routes ini digunakan dalam aplikasi Rails untuk menentukan bagaimana permintaan HTTP akan ditangani oleh controller yang sesuai. Routes ini memungkinkan aplikasi untuk berkomunikasi dengan API versi 1 yang mencakup operasi CRUD untuk entitas `User`.

## Struktur Kode

### Pembuatan Namespace API
- **Namespace `api/v1`**: Menyediakan ruang lingkup untuk API versi 1.

### Rute untuk Pengguna (Users)
- **Resources 'users'**: Mendefinisikan rute untuk entitas `User`.
  - **`GET` `/api/v1/users/view`**: Menampilkan semua pengguna.
  - **`GET` `/api/v1/users/view/:id`**: Menampilkan data pengguna berdasarkan ID.
  - **`POST` `/api/v1/users/add`**: Menambahkan pengguna baru.
  - **`POST` `/api/v1/users/add/csv`**: Menambahkan pengguna dari file CSV.
  - **`POST` `/api/v1/users/edit/csv`**: Mengupdate pengguna dari file CSV.
  - **`PUT` `/api/v1/users/edit/:id`**: Mengupdate data pengguna berdasarkan ID.
  - **`DELETE` `/api/v1/users/delete/:id`**: Menghapus data pengguna berdasarkan ID.
  - **`DELETE` `/api/v1/users/clear`**: Menghapus semua data pengguna.

#### Catatan Penting
- Pastikan untuk mengonfigurasi controller `Users` dengan metode yang sesuai untuk menangani setiap jenis permintaan API yang didefinisikan di atas.
- Lakukan pengujian pada setiap rute API untuk memastikan fungsi-fungsinya berjalan dengan benar sebelum digunakan dalam lingkungan produksi.
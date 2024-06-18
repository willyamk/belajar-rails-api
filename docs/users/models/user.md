### Dokumentasi Kelas `User`

#### Deskripsi
Kelas `User` adalah model dalam aplikasi Ruby on Rails yang bertanggung jawab untuk mengelola data pengguna (users) dalam basis data. Kelas ini mencakup validasi data, enkripsi password, dan pembuatan kode pengguna secara otomatis.

#### Metode dan Validasi

1. **before_create :set_user_code**
    - Metode `set_user_code` dipanggil sebelum pembuatan pengguna baru untuk mengatur kode pengguna secara otomatis.

2. **before_save :set_encrypt_password**
    - Metode `set_encrypt_password` dipanggil sebelum penyimpanan pengguna untuk mengenkripsi password.

3. **Validasi Username**
    - Memastikan bahwa username tidak boleh kosong.
    - Panjang karakter harus di antara 6 hingga 50 karakter.
    - Memberikan pesan kesalahan jika tidak memenuhi kriteria.

4. **Validasi Password**
    - Memastikan bahwa password tidak boleh kosong.
    - Panjang karakter harus di antara 8 hingga 255 karakter.
    - Memeriksa format password menggunakan ekspresi reguler: setidaknya satu huruf kecil, satu huruf besar, satu digit, dan satu karakter khusus.
    - Memberikan pesan kesalahan jika tidak memenuhi kriteria.

5. **Validasi Email**
    - Memastikan bahwa email tidak boleh kosong.
    - Panjang karakter harus di antara 5 hingga 255 karakter.
    - Memeriksa format email menggunakan ekspresi reguler.
    - Memberikan pesan kesalahan jika tidak memenuhi kriteria.

#### Metode Privat

1. **set_user_code**
    - Metode ini menghasilkan kode pengguna unik dengan menggunakan prefix "USR-" diikuti nomor urut.
    - Prefix "USR-" digunakan untuk identifikasi pengguna.
    - Metode ini digunakan secara otomatis sebelum pembuatan pengguna baru.

2. **set_encrypt_password**
    - Metode ini mengenkripsi password sebelum menyimpannya ke dalam basis data.
    - Menggunakan fungsi enkripsi bcrypt untuk keamanan password.

3. **generate_user_code**
    - Metode ini digunakan oleh `set_user_code` untuk menghasilkan kode pengguna unik.
    - Mengambil nomor urut terakhir dari basis data dan menambahkannya dengan 1.

#### Catatan Penting
- Pastikan untuk melakukan pengujian menyeluruh pada validasi dan enkripsi password untuk memastikan keamanan dan keberhasilan fungsi-fungsi tersebut.
- Perhatikan bahwa password dienkripsi sebelum disimpan, namun data sensitif lainnya seperti email dan username masih dalam bentuk teks biasa. Evaluasi kebutuhan keamanan aplikasi Anda dan pertimbangkan untuk mengenkripsi data sensitif lainnya jika diperlukan.
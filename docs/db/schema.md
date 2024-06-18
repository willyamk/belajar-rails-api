### Dokumentasi Script Migration `CreateUsers` (Versi Lain)

#### Deskripsi
Script ini juga merupakan sebuah *migration* dalam framework Ruby on Rails menggunakan ActiveRecord. Tujuannya sama dengan script sebelumnya, yaitu mengelola struktur database.

#### Keterangan Script

1. **Membuat Tabel 'users'**
    - Tabel 'users' dibuat menggunakan metode `create_table`.
    - Opsi `force: :cascade` digunakan untuk menghapus dan membuat ulang tabel jika sudah ada sebelumnya.

2. **Menambahkan Kolom 'id'**
    - Kolom 'id' ditambahkan dengan tipe data string.
    - Panjang karakternya adalah 36 karakter.
    - Penggunaan `{ type: :string, limit: 36 }` adalah cara lain untuk menentukan tipe data dan panjang karakter.

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
    - Kolom 'created_at' dan 'updated_at' ditambahkan dengan tipe data datetime.
    - Opsi `null: false` menunjukkan bahwa kolom tersebut tidak boleh kosong.

#### Catatan Penting
- Perhatikan bahwa kedua script tersebut memiliki tujuan yang sama namun ditulis dengan gaya yang sedikit berbeda. Pilih gaya penulisan yang sesuai dengan preferensi atau standar tim Anda.
- Lakukan pengujian pada lingkungan pengembangan terlebih dahulu sebelum menerapkan perubahan ini pada lingkungan produksi.
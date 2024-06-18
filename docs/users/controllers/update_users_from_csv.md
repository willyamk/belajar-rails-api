## Dokumentasi Pengujian Update dari CSV

### Deskripsi
File ini menjelaskan cara menguji fungsi pembaruan data pengguna dari file CSV berdasarkan `user_code` menggunakan perangkat lunak Postman. Proses ini menguji endpoint untuk memperbarui pengguna yang ada dalam aplikasi berdasarkan kode pengguna yang disediakan dalam file CSV.

### Pengujian Endpoint

1. **Metode:** POST
2. **URL:** `http://localhost:3000/api/v1/users/edit/csv`
3. **Body:** Pilih "form-data". Buat kunci baru dengan nama `edit_users_csv` dan pilih tipe file. Unggah file CSV yang berisi data pengguna yang akan diperbarui berdasarkan `user_code` seperti berikut:

```csv
user_code,username,password,email
USR-1,edit_csv_data_1,edit_csv_Password_d@ta_1,edit_csv_data_1@example.com
USR-2,edit_csv_data_2,edit_csv_Password_d@ta_2,edit_csv_data_2@example.com
USR-3,edit_username_3,edit_Passw@rd_3,edit_password_3@example.com
```

### Hasil yang Diharapkan

#### Ketika Pembaruan Berhasil

Jika pembaruan data dari file CSV berhasil, tanggapan yang diharapkan adalah:

```json
{
    "status": "success",
    "status_code": 200,
    "message": "Users updated successfully",
    "users": [
        {
            "username": "edit_csv_data_1",
            "password": "$2a$12$GJM7hzAU4griAtRUYOvQOez3tIkW05Jli82dm.z14m43/2AVG4JEe",
            "email": "edit_csv_data_1@example.com",
            "id": "e8ef0f93-c62c-498d-8d6d-c491774cb94a",
            "user_code": "USR-1",
            "created_at": "2024-06-17T09:54:25.339Z",
            "updated_at": "2024-06-17T10:06:03.841Z"
        },
        {
            "username": "edit_csv_data_2",
            "password": "$2a$12$8XJCBsOZjAn4DhzLwlhH1Oo1vxfAjjlARUNQn2tPooR.AEhIV9rnW",
            "email": "edit_csv_data_2@example.com",
            "id": "b7856240-df2d-4cea-9e70-9ea55a189345",
            "user_code": "USR-2",
            "created_at": "2024-06-17T09:54:25.523Z",
            "updated_at": "2024-06-17T10:06:04.023Z"
        },
        {
            "username": "edit_username_3",
            "password": "$2a$12$iJPy0QlfMtNtIaPLsrIKtuuBH.SSXuQZ288Yd2kV7bqiTsEXNoVCy",
            "email": "edit_password_3@example.com",
            "id": "8dd5c9a8-c1d5-47ae-a86e-06bd2ad3ba2c",
            "user_code": "USR-3",
            "created_at": "2024-06-17T09:54:25.708Z",
            "updated_at": "2024-06-17T10:06:04.202Z"
        }
    ],
    "path": "http://127.0.0.1:3000/api/v1/users/edit/csv",
    "amount": 3
}
```

#### Ketika Pembaruan Gagal

Jika pembaruan data gagal karena tidak ditemukannya `user_code`, tanggapan yang diharapkan adalah:

```json
{
    "status": "failed",
    "status_code": 400,
    "message": {
        "user_data_index_1": [
            "User not found at index 1"
        ],
        "user_data_index_2": [
            "User not found at index 2"
        ],
        "user_data_index_3": [
            "User not found at index 3"
        ]
    },
    "path": "http://127.0.0.1:3000/api/v1/users/edit/csv"
}
```

### Catatan Penting
- Pastikan server lokal Anda berjalan pada port 3000 dan API sudah didefinisikan dengan benar sesuai dengan skrip yang diberikan.
- Pastikan untuk menguji dengan file CSV yang sesuai dengan format yang diharapkan dan memverifikasi bahwa tanggapan sesuai dengan yang diharapkan.
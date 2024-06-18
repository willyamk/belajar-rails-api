## Dokumentasi Controller Users

### Deskripsi
File ini adalah controller yang bertanggung jawab untuk menangani operasi CRUD pada model User dalam aplikasi. Selain itu, controller ini memiliki metode khusus untuk menambahkan pengguna dari file CSV.

### Metode `add_users_from_csv`

- **Deskripsi:** Metode ini digunakan untuk menambahkan pengguna dari file CSV yang diunggah.
1. **Metode HTTP:** POST
2. **URL:** `http://localhost:3000/api/v1/users/add/csv`
3. **Body:** Pilih "form-data". Buat kunci baru dengan nama `add_users_csv` dan pilih tipe file. Unggah file CSV yang berisi data pengguna seperti berikut:

```csv
username,password,email
data_1,Password_d@ta_1,data_1@example.com
data_2,Password_d@ta_2,data_2@example.com
data_3,Password_d@ta_3,data_3@example.com
data_4,Password_d@ta_4,data_5@example.com
data_5,Password_d@ta_5,data_5@example.com
```

### Hasil yang Diharapkan

#### Jika Berhasil

```json
{
  "status": "success",
  "status_code": 200,
  "message": "Users added successfully",
  "users": [
    {
      "id": "e8ef0f93-c62c-498d-8d6d-c491774cb94a",
      "user_code": "USR-1",
      "username": "data_1",
      "password": "$2a$12$0LBRCvRlGglyi4p.6ewghuo0cpQSBCXV8zPnMTZmHKAPfdY1tziPe",
      "email": "data_1@example.com",
      "created_at": "2024-06-17T09:54:25.339Z",
      "updated_at": "2024-06-17T09:54:25.339Z"
    },
    {
      "id": "b7856240-df2d-4cea-9e70-9ea55a189345",
      "user_code": "USR-2",
      "username": "data_2",
      "password": "$2a$12$GrzKylpV9aeb7RlE9f/FjufnKZQYMRvPUYEyxrLni818DIRHbrRku",
      "email": "data_2@example.com",
      "created_at": "2024-06-17T09:54:25.523Z",
      "updated_at": "2024-06-17T09:54:25.523Z"
    },
    {
      "id": "8dd5c9a8-c1d5-47ae-a86e-06bd2ad3ba2c",
      "user_code": "USR-3",
      "username": "data_3",
      "password": "$2a$12$KeuFqdAbL0k4F7F2csOEreyfnPP9l7XBt49uvV0a/J/PD7f8khXIy",
      "email": "data_3@example.com",
      "created_at": "2024-06-17T09:54:25.708Z",
      "updated_at": "2024-06-17T09:54:25.708Z"
    },
    {
      "id": "27765624-7ba2-4df0-8fdb-f52aef08f2b4",
      "user_code": "USR-4",
      "username": "data_4",
      "password": "$2a$12$UmYR0BRGM9qW2oooG8CrSOl93hBKnnKuQ.PyHO6jXHr0fXIO33Rym",
      "email": "data_5@example.com",
      "created_at": "2024-06-17T09:54:25.891Z",
      "updated_at": "2024-06-17T09:54:25.891Z"
    },
    {
      "id": "838a8ced-5e9a-468c-add7-aa9b1d764d9c",
      "user_code": "USR-5",
      "username": "data_5",
      "password": "$2a$12$ZJWvwwQFdnhO2X7kKJSfUOq5l1q2tI3tWp/ip7QuPjUVrjXd7CjHW",
      "email": "data_5@example.com",
      "created_at": "2024-06-17T09:54:26.074Z",
      "updated_at": "2024-06-17T09:54:26.074Z"
    }
  ],
  "path": "http://127.0.0.1:3000/api/v1/users/add/csv",
  "amount": 5
}
```

#### Jika Gagal

```json
{
  "status": "failed",
  "status_code": 400,
  "message": {
    "user_data_index_1": [
      "Username can't be blank at index 1",
      "Username must be 6 to 50 characters long at index 1",
      "Password must be 8 to 255 characters long at index 1",
      "Password must include at least one lowercase letter, one uppercase letter, one digit, and one special character at index 1",
      "Email is not a valid email format at index 1",
      "Email valid format example: username@mailserver.domain"
    ],
    "user_data_index_2": [
      "Username can't be blank at index 2",
      "Username must be 6 to 50 characters long at index 2",
      "Password must be 8 to 255 characters long at index 2",
      "Password must include at least one lowercase letter, one uppercase letter, one digit, and one special character at index 2",
      "Email is not a valid email format at index 2",
      "Email valid format example: username@mailserver.domain"
    ],
    "user_data_index_3": [
      "Username can't be blank at index 3",
      "Username must be 6 to 50 characters long at index 3",
      "Password must be 8 to 255 characters long at index 3",
      "Password must include at least one lowercase letter, one uppercase letter, one digit, and one special character at index 3",
      "Email is not a valid email format at index 3",
      "Email valid format example: username@mailserver.domain"
    ],
    "user_data_index_4": [
      "Username can't be blank at index 4",
      "Username must be 6 to 50 characters long at index 4",
      "Password must be 8 to 255 characters long at index 4",
      "Password must include at least one lowercase letter, one uppercase letter, one digit, and one special character at index 4",
      "Email is not a valid email format at index 4",
      "Email valid format example: username@mailserver.domain"
    ],
    "user_data_index_5": [
      "Username can't be blank at index 5",
      "Username must be 6 to 50 characters long at index 5",
      "Password must be 8 to 255 characters long at index 5",
      "Password must include at least one lowercase letter, one uppercase letter, one digit, and one special character at index 5",
      "Email is not a valid email format at index 5",
      "Email valid format example: username@mailserver.domain"
    ]
  },
  "path": "http://127.0.0.1:3000/api/v1/users/add/csv"
}

```

### Catatan Penting
- Pastikan server lokal Anda berjalan pada port 3000 dan API sudah didefinisikan dengan benar sesuai dengan skrip yang diberikan.
- Pastikan untuk menguji dengan file CSV yang sesuai dengan format yang diharapkan dan memverifikasi bahwa tanggapan sesuai dengan yang diharapkan.
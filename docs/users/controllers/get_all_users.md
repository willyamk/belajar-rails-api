## Dokumentasi Pengujian Endpoint `GET ALL USERS`

### Deskripsi
File ini memberikan instruksi untuk menguji endpoint API menggunakan perangkat lunak Postman. Proses ini akan menguji endpoint untuk mendapatkan data semua pengguna yang tersedia dalam aplikasi.

### Pengujian Endpoint

1. **Metode:** GET
2. **URL:** `http://localhost:3000/api/v1/users/view`

### Hasil yang Diharapkan

#### Ketika Data Tersedia

Jika terdapat data pengguna yang tersedia, tanggapan yang diharapkan adalah:

```json
{
  "status": "success",
  "status_code": 200,
  "message": "All user data is successfully displayed",
  "users": [
    {
      "id": "e8ef0f93-c62c-498d-8d6d-c491774cb94a",
      "user_code": "USR-1",
      "username": "edit_csv_data_1",
      "password": "$2a$12$GJM7hzAU4griAtRUYOvQOez3tIkW05Jli82dm.z14m43/2AVG4JEe",
      "email": "edit_csv_data_1@example.com",
      "created_at": "2024-06-17T09:54:25.339Z",
      "updated_at": "2024-06-17T10:06:03.841Z"
    },
    {
      "id": "b7856240-df2d-4cea-9e70-9ea55a189345",
      "user_code": "USR-2",
      "username": "edit_csv_data_2",
      "password": "$2a$12$8XJCBsOZjAn4DhzLwlhH1Oo1vxfAjjlARUNQn2tPooR.AEhIV9rnW",
      "email": "edit_csv_data_2@example.com",
      "created_at": "2024-06-17T09:54:25.523Z",
      "updated_at": "2024-06-17T10:06:04.023Z"
    },
    {
      "id": "8dd5c9a8-c1d5-47ae-a86e-06bd2ad3ba2c",
      "user_code": "USR-3",
      "username": "edit_username_3",
      "password": "$2a$12$iJPy0QlfMtNtIaPLsrIKtuuBH.SSXuQZ288Yd2kV7bqiTsEXNoVCy",
      "email": "edit_password_3@example.com",
      "created_at": "2024-06-17T09:54:25.708Z",
      "updated_at": "2024-06-17T10:06:04.202Z"
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
    },
    {
      "id": "1ac770c4-07d0-40f1-9d13-82658cc98f5c",
      "user_code": "USR-6",
      "username": "data_6",
      "password": "$2a$12$MS8Ca6XdvjDuB9D.75NQXeymsQHrXmMw5BYG2CYD8ZqvNo2KS6Xja",
      "email": "data_6@example.com",
      "created_at": "2024-06-17T10:13:45.671Z",
      "updated_at": "2024-06-17T10:13:45.671Z"
    },
    {
      "id": "f0d8e6ca-3545-437e-b4d8-1a70cc23831b",
      "user_code": "USR-7",
      "username": "data_7",
      "password": "$2a$12$1m3lQ5nKeFz.hnVMUjGKDOEVBYhgnMM.zsHolLCqNyMLMsv6XG2km",
      "email": "data_7@example.com",
      "created_at": "2024-06-17T10:13:45.857Z",
      "updated_at": "2024-06-17T10:13:45.857Z"
    },
    {
      "id": "7d144e6e-488f-4c34-bc37-856e09452d68",
      "user_code": "USR-8",
      "username": "data_8",
      "password": "$2a$12$I9CILwji70Z9n6dU0NYzSuc2FsXJLcvS7NPsmCCXtslR7IMh1P5Va",
      "email": "data_8@example.com",
      "created_at": "2024-06-17T10:13:46.045Z",
      "updated_at": "2024-06-17T10:13:46.045Z"
    },
    {
      "id": "94ea2385-9fff-4000-a69b-52ac2e7557ed",
      "user_code": "USR-9",
      "username": "data_9",
      "password": "$2a$12$FBlyjEwWxnbke8PQEY0vm./Y3TlfUGCszk.n1L6dhqUIXN4eY.fNe",
      "email": "data_9@example.com",
      "created_at": "2024-06-17T10:13:46.229Z",
      "updated_at": "2024-06-17T10:13:46.229Z"
    },
    {
      "id": "57324c05-c3f8-47e8-b0c2-55b8aeb9cb56",
      "user_code": "USR-10",
      "username": "data_10",
      "password": "$2a$12$XVuLWnSCK9nItBMrq0VyGeks9CskW413P5G.Ff.YoEjHqXAhTfsiC",
      "email": "data_10@example.com",
      "created_at": "2024-06-17T10:13:46.411Z",
      "updated_at": "2024-06-17T10:13:46.411Z"
    },
    {
      "id": "c4c5459f-dca0-4823-b7a2-c874e93c1001",
      "user_code": "USR-11",
      "username": "data_11",
      "password": "$2a$12$Mtjx8ywhcwfmvHgZntA39OhyxAKCUOLTCGwIrkw7lAp.ppBxqvkVO",
      "email": "data_11@example.com",
      "created_at": "2024-06-17T10:13:46.594Z",
      "updated_at": "2024-06-17T10:13:46.594Z"
    },
    {
      "id": "9e75b84a-cd5f-4239-a155-78e2e718b703",
      "user_code": "USR-12",
      "username": "data_12",
      "password": "$2a$12$jZt4yOVRbVLBeVcf6kGXw.dXLtPwUIhSjFaZ5xfpIgPBp7UAy1tTi",
      "email": "data_12@example.com",
      "created_at": "2024-06-17T10:13:46.777Z",
      "updated_at": "2024-06-17T10:13:46.777Z"
    }
  ],
  "path": "http://localhost:3000/api/v1/users/view",
  "amount": 12,
  "current_page": 1,
  "total_pages": 1,
  "total_search_data": 12
}
```

#### Ketika Data Kosong

Jika tidak ada data pengguna yang tersedia, tanggapan yang diharapkan adalah:

```json
{
    "status": "success",
    "status_code": 200,
    "message": "All user data is successfully displayed",
    "users": [],
    "path": "http://localhost:3000/api/v1/users/view",
    "amount": 0,
    "current_page": 1,
    "total_pages": 1,
    "total_search_data": 0
}
```

### Catatan Penting
- Pastikan server lokal Anda berjalan pada port 3000 dan API sudah didefinisikan dengan benar sesuai dengan skrip yang diberikan.
- Gunakan Postman atau alat serupa untuk menguji API dan memverifikasi bahwa tanggapan sesuai dengan yang diharapkan.
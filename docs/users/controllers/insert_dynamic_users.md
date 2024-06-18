## Dokumentasi Pengujian API

### Deskripsi
File ini memberikan instruksi untuk menguji API menggunakan perangkat lunak Postman. Proses ini akan menguji endpoint untuk menambahkan pengguna baru ke dalam aplikasi. Dua skenario diuji: pertama, ketika data yang diberikan sesuai dengan persyaratan, dan kedua, ketika ada kesalahan dalam data yang disertakan.

### Pengujian Endpoint

1. **Metode:** POST
2. **URL:** `http://localhost:3000/api/v1/users/add`
3. **Body:** Pilih "raw" dan pilih tipe data "JSON". Masukkan data pengguna seperti berikut:

```json
{
    "add_users" : [
        {
            "username": "data_1",
            "password": "Password_d@ta_1",
            "email": "data_1@example.com"
        },
        {
            "username": "data_2",
            "password": "Password_d@ta_2",
            "email": "data_2@example.com"
        }
    ]
}
```

### Hasil yang Diharapkan
Jika data yang disertakan sesuai dengan persyaratan, tanggapan yang diharapkan adalah:

```json
{
    "status": "success",
    "status_code": 200,
    "message": "Users added successfully",
    "users": [
        {
            "id": "50231d4c-96ff-46bf-9f60-3e72a161953a",
            "user_code": "USR-1",
            "username": "data_1",
            "password": "$2a$12$5aFK3BHBlZn02e8tf7hZXe5a53B7U/aS3Q/vAFnm.axxKOFIgnQci",
            "email": "data_1@example.com",
            "created_at": "2024-06-17T09:42:13.269Z",
            "updated_at": "2024-06-17T09:42:13.269Z"
        },
        {
            "id": "77635aeb-ff94-49a6-8ddc-e9dd544fdb73",
            "user_code": "USR-2",
            "username": "data_2",
            "password": "$2a$12$F433de.joxIeq5ifLa/ZAeRAFatlE9BesWmOE6oy5tM7F9twO0uI6",
            "email": "data_2@example.com",
            "created_at": "2024-06-17T09:42:13.878Z",
            "updated_at": "2024-06-17T09:42:13.878Z"
        }
    ],
    "path": "http://127.0.0.1:3000/api/v1/users/add",
    "amount": 2
}
```

Jika terjadi kesalahan dalam data yang disertakan, tanggapan yang diharapkan adalah:

```json
{
    "status": "failed",
    "status_code": 400,
    "message": {
        "user_data_index_1": [
            "Username can't be blank at index 1",
            "Username must be 6 to 50 characters long at index 1"
        ],
        "user_data_index_2": [
            "Password can't be blank at index 2",
            "Password must be 8 to 255 characters long at index 2",
            "Password must include at least one lowercase letter, one uppercase letter, one digit, and one special character at index 2",
            "Email can't be blank at index 2",
            "Email must be 5 to 255 characters long at index 2",
            "Email is not a valid email format at index 2",
            "Email valid format example: username@mailserver.domain"
        ]
    },
    "path": "http://127.0.0.1:3000/api/v1/users/add"
}
```

### Catatan Penting
- Pastikan server lokal Anda berjalan pada port 3000 dan API sudah didefinisikan dengan benar sesuai dengan skrip yang diberikan.
- Gunakan Postman atau alat serupa untuk menguji API dan memverifikasi bahwa tanggapan sesuai dengan yang diharapkan.
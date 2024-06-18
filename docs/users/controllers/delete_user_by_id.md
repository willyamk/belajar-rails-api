## Dokumentasi Penghapusan Data Pengguna berdasarkan ID

### Deskripsi
File ini memberikan instruksi untuk menghapus data pengguna berdasarkan ID menggunakan metode DELETE pada API. Pengujian dilakukan menggunakan perangkat lunak Postman dengan memasukkan URL yang mencakup ID pengguna yang ingin dihapus.

### Pengujian Endpoint

1. **Metode:** DELETE
2. **URL:** `http://localhost:3000/api/v1/users/delete/:id`
3. **Parameter:**
    - **Path Variable:**
        - `id`: ID pengguna yang ingin dihapus.

### Hasil yang Diharapkan

#### Ketika ID Data Ditemukan dan Data Dihapus dengan Sukses

Jika ID data ditemukan dan data pengguna berhasil dihapus, tanggapan yang diharapkan adalah:

```json
{
    "status": "success",
    "status_code": 200,
    "message": "User id = '3af0d8f8-4fdc-4e94-bdc7-225521fd4331' deleted successfully",
    "users": {
        "id": "3af0d8f8-4fdc-4e94-bdc7-225521fd4331",
        "user_code": "USR-1",
        "username": "update_username_manual",
        "password": "$2a$12$Ke5u3hj5ZR4e1xLkuBhQsugxviawyLBRWvXogswghx9vjuZqtBDUS",
        "email": "update_email_manual@mail.com",
        "created_at": "2024-06-17T10:19:55.363Z",
        "updated_at": "2024-06-17T10:54:11.192Z"
    },
    "path": "http://localhost:3000/api/v1/users/delete/3af0d8f8-4fdc-4e94-bdc7-225521fd4331",
    "amount": 1
}
```

#### Ketika ID Data Tidak Ditemukan

Jika ID data tidak ditemukan dalam basis data, tanggapan yang diharapkan adalah:

```json
{
    "status": "failed",
    "status_code": 404,
    "message": "User with id = 'faccd46f-10b4-4cf5-8549-4022e85ab248' not found",
    "path": "http://localhost:3000/api/v1/users/delete/faccd46f-10b4-4cf5-8549-4022e85ab248"
}
```

### Catatan Penting
- Pastikan server lokal Anda berjalan pada port 3000 dan API sudah didefinisikan dengan benar sesuai dengan skrip yang diberikan.
- Gunakan Postman atau alat serupa untuk menguji API dan memverifikasi bahwa tanggapan sesuai dengan yang diharapkan.
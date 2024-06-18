## Dokumentasi Pengambilan Data User berdasarkan ID

### Deskripsi
File ini memberikan instruksi untuk mengambil data pengguna berdasarkan ID menggunakan metode GET pada API. Pengujian dilakukan menggunakan perangkat lunak Postman dengan memasukkan URL yang mencakup ID pengguna yang ingin ditemukan.

### Pengujian Endpoint

1. **Metode:** GET
2. **URL:** `http://localhost:3000/api/v1/users/view/:id`
3. **Parameter:**
    - **Path Variable:**
        - `id`: ID pengguna yang ingin dicari.

### Hasil yang Diharapkan

#### Ketika ID Data Ditemukan

Jika ID data ditemukan dalam basis data, tanggapan yang diharapkan adalah:

```json
{
    "status": "success",
    "status_code": 200,
    "message": "User data with id = '52014ab7-c812-4b27-9352-2bc3587935af' showed successfully",
    "users": {
        "id": "52014ab7-c812-4b27-9352-2bc3587935af",
        "user_code": "USR-4",
        "username": "data_4",
        "password": "$2a$12$9LRm265/8pUGBz39mDGzbeDxU/oSJ0kgl/AOHydk47.5K0ASh5Vu2",
        "email": "data_5@example.com",
        "created_at": "2024-06-17T10:19:55.912Z",
        "updated_at": "2024-06-17T10:19:55.912Z"
    },
    "path": "http://localhost:3000/api/v1/users/view/52014ab7-c812-4b27-9352-2bc3587935af",
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
    "path": "http://localhost:3000/api/v1/users/view/faccd46f-10b4-4cf5-8549-4022e85ab248"
}
```

### Catatan Penting
- Pastikan server lokal Anda berjalan pada port 3000 dan API sudah didefinisikan dengan benar sesuai dengan skrip yang diberikan.
- Gunakan Postman atau alat serupa untuk menguji API dan memverifikasi bahwa tanggapan sesuai dengan yang diharapkan.
### Dokumentasi Update Data User berdasarkan ID

#### Deskripsi
File ini memberikan instruksi untuk memperbarui data pengguna berdasarkan ID menggunakan metode PUT pada API. Pengujian dilakukan menggunakan perangkat lunak Postman dengan memasukkan URL yang mencakup ID pengguna yang ingin diperbarui. Data yang diperbarui disertakan dalam body request dalam format raw.

#### Pengujian Endpoint

1. **Metode:** PUT
2. **URL:** `http://localhost:3000/api/v1/users/edit/:id`
3. **Parameter:**
    - **Path Variable:**
        - `id`: ID pengguna yang ingin diperbarui.

#### Body Request
Pilih opsi "raw" pada bagian body dan masukkan data pengguna yang ingin diperbarui dalam format JSON.

#### Hasil yang Diharapkan

##### Ketika ID Data Ditemukan dan Data Diperbarui dengan Sukses

Jika ID data ditemukan dan data pengguna berhasil diperbarui sesuai ketentuan, tanggapan yang diharapkan adalah:

```json
{
    "status": "success",
    "status_code": 200,
    "message": "User data with id = '3af0d8f8-4fdc-4e94-bdc7-225521fd4331' updated successfully",
    "users": {
        "username": "update_username_manual",
        "password": "$2a$12$YecMNxy61YsqYLn15EdL8efZ11iKYLhT/9H8OBBU4lw9WQDm.xDSu",
        "email": "update_email_manual@mail.com",
        "id": "3af0d8f8-4fdc-4e94-bdc7-225521fd4331",
        "user_code": "USR-1",
        "created_at": "2024-06-17T10:19:55.363Z",
        "updated_at": "2024-06-17T10:49:06.040Z"
    },
    "path": "http://localhost:3000/api/v1/users/3af0d8f8-4fdc-4e94-bdc7-225521fd4331",
    "amount": 1
}
```

##### Ketika ID Data Ditemukan Tetapi Data Tidak Sesuai Ketentuan

Jika ID data ditemukan tetapi data pengguna tidak sesuai dengan ketentuan yang ditetapkan, tanggapan yang diharapkan adalah:

```json
{
    "status": "failed",
    "status_code": 400,
    "message": [
        "Username can't be blank",
        "Username must be 6 to 50 characters long",
        "Password can't be blank",
        "Password must be 8 to 255 characters long",
        "Password must include at least one lowercase letter, one uppercase letter, one digit, and one special character",
        "Email can't be blank",
        "Email must be 5 to 255 characters long",
        "Email is not a valid email format. Valid format example: username@mailserver.domain"
    ],
    "path": "http://localhost:3000/api/v1/users/edit/3af0d8f8-4fdc-4e94-bdc7-225521fd4331"
}
```

##### Ketika ID Data Tidak Ditemukan

Jika ID data tidak ditemukan dalam basis data, tanggapan yang diharapkan adalah:

```json
{
    "status": "failed",
    "status_code": 404,
    "message": "User with id = 'faccd46f-10b4-4cf5-8549-4022e85ab248' not found",
    "path": "http://localhost:3000/api/v1/users/edit/faccd46f-10b4-4cf5-8549-4022e85ab248"
}
```

#### Catatan Penting
- Pastikan server lokal Anda berjalan pada port 3000 dan API sudah didefinisikan dengan benar sesuai dengan skrip yang diberikan.
- Gunakan Postman atau alat serupa untuk menguji API dan memverifikasi bahwa tanggapan sesuai dengan yang diharapkan.
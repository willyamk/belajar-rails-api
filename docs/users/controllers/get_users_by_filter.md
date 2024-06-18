## Dokumentasi Pengambilan Data User dengan `FILTER` dan `PAGINATION`

### Deskripsi
File ini memberikan instruksi untuk mengambil data pengguna dengan menggunakan filter berdasarkan user_code atau username, serta fitur paginasi pada API. Pengujian dilakukan menggunakan perangkat lunak Postman dengan memilih metode GET dan menyertakan parameter pencarian (search) dan halaman (page) untuk menentukan data yang ingin diambil.

### Pengujian Endpoint

1. **Metode:** GET
2. **URL:** `http://localhost:3000/api/v1/users/view?search={input_filter}&page={nomor_halaman}`
3. **Parameter:**
    - **Key:**
        - `search`: User_code atau Username yang ingin dicari.
        - `page`: Nomor halaman yang ingin diakses.

### Hasil yang Diharapkan

#### Ketika Data Sesuai dengan Kriteria Pencarian

Jika terdapat data pengguna yang sesuai dengan kriteria pencarian dan ada pada halaman yang diminta, tanggapan yang diharapkan adalah:

```json
{
  "status": "success",
  "status_code": 200,
  "message": "Page 1 of 1 pages loaded successfully.",
  "users": [
    {
      "id": "3af0d8f8-4fdc-4e94-bdc7-225521fd4331",
      "user_code": "USR-1",
      "username": "data_1",
      "password": "$2a$12$oE0ufEWL9yMgmavT9iOE/en9NA9d10RC5e7eyH3riICQddKpsdNZG",
      "email": "data_1@example.com",
      "created_at": "2024-06-17T10:19:55.363Z",
      "updated_at": "2024-06-17T10:19:55.363Z"
    },
    {
      "id": "7c29699d-0e22-4c45-ae95-2d78966f6811",
      "user_code": "USR-10",
      "username": "data_10",
      "password": "$2a$12$ReH8Li/JwOlcMEg28VAQwedDJXB8152stHQZRBtGuewA0nnPyWOUa",
      "email": "data_10@example.com",
      "created_at": "2024-06-17T10:19:57.029Z",
      "updated_at": "2024-06-17T10:19:57.029Z"
    },
    {
      "id": "ecfdf4f9-29c2-497d-b42f-de7e561bc4cb",
      "user_code": "USR-11",
      "username": "data_11",
      "password": "$2a$12$/titqx/FHxFbdajPIz5C7.6EpEfDlgsxBzd0Vzq3bqYBgj7Hiek4G",
      "email": "data_11@example.com",
      "created_at": "2024-06-17T10:19:57.214Z",
      "updated_at": "2024-06-17T10:19:57.214Z"
    },
    {
      "id": "24b86323-ef00-4e5a-a1c2-df4e54c71a44",
      "user_code": "USR-12",
      "username": "data_12",
      "password": "$2a$12$ahZR5sEtLPNFc80HPBWZ0uZQgHAfwmwdEv48GLVzjcXhQ6C8GiAPC",
      "email": "data_12@example.com",
      "created_at": "2024-06-17T10:19:57.396Z",
      "updated_at": "2024-06-17T10:19:57.396Z"
    }
  ],
  "path": "http://localhost:3000/api/v1/users?search=data_1&page=1",
  "amount": 12,
  "current_page": 1,
  "total_pages": 1,
  "total_search_data": 4
}
```

#### Ketika Data Tidak Ditemukan di Halaman yang Diminta

Jika data username atau user_code ditemukan namun tidak ada pada halaman yang diminta, tanggapan yang diharapkan adalah:

```json
{
    "status": "failed",
    "status_code": 400,
    "message": "Page number exceeds total pages",
    "path": "http://localhost:3000/api/v1/users/view?search=data_1&page=2"
}
```

#### Ketika Data Tidak Ditemukan

Jika data username atau user_code tidak ditemukan, tanggapan yang diharapkan adalah:

```json
{
    "status": "failed",
    "status_code": 404,
    "message": "No users found matching the search query",
    "path": "http://localhost:3000/api/v1/users/view?search=KODE-123&page=1"
}
```

### Catatan Penting
- Pastikan server lokal Anda berjalan pada port 3000 dan API sudah didefinisikan dengan benar sesuai dengan skrip yang diberikan.
- Gunakan Postman atau alat serupa untuk menguji API dan memverifikasi bahwa tanggapan sesuai dengan yang diharapkan.
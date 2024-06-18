## Dokumentasi Pengambilan Data User dengan `PAGINATION`

### Deskripsi
File ini memberikan instruksi untuk mengambil data pengguna dengan menggunakan fitur paginasi pada API. Pengujian dilakukan menggunakan perangkat lunak Postman dengan memilih metode GET dan menyertakan parameter halaman (page) untuk menentukan halaman mana yang ingin diakses.

### Pengujian Endpoint

1. **Metode:** GET
2. **URL:** `http://localhost:3000/api/v1/users/view?page=nomor_halaman`
3. **Parameter:**
    - **Key:** `page`
    - **Value:** Nomor halaman yang ingin diakses.

### Hasil yang Diharapkan

#### Ketika Data Tersedia di Halaman yang Diminta

Jika terdapat data pengguna di halaman yang diminta, tanggapan yang diharapkan adalah:

```json
{
  "status": "success",
  "status_code": 200,
  "message": "Page 1 of 2 pages loaded successfully.",
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
      "id": "063c8a71-c6c1-4140-ad63-de197c4b30bf",
      "user_code": "USR-2",
      "username": "data_2",
      "password": "$2a$12$caAaIdWd9LNJwiS.5Ce8RO91oMMECXGzGf2odUhKWdLnXaDqyOOdu",
      "email": "data_2@example.com",
      "created_at": "2024-06-17T10:19:55.544Z",
      "updated_at": "2024-06-17T10:19:55.544Z"
    },
    {
      "id": "8c1ea18b-2ad0-4a52-9e96-0e26f45881c3",
      "user_code": "USR-3",
      "username": "data_3",
      "password": "$2a$12$iPAi1jH.o7Q4MRc5GQrBHePuJuSYwxzAy7j4R46o339Ds3wZIVCgi",
      "email": "data_3@example.com",
      "created_at": "2024-06-17T10:19:55.726Z",
      "updated_at": "2024-06-17T10:19:55.726Z"
    },
    {
      "id": "52014ab7-c812-4b27-9352-2bc3587935af",
      "user_code": "USR-4",
      "username": "data_4",
      "password": "$2a$12$9LRm265/8pUGBz39mDGzbeDxU/oSJ0kgl/AOHydk47.5K0ASh5Vu2",
      "email": "data_5@example.com",
      "created_at": "2024-06-17T10:19:55.912Z",
      "updated_at": "2024-06-17T10:19:55.912Z"
    },
    {
      "id": "bbc0c7b9-2dca-4f51-bd46-c13535db8d60",
      "user_code": "USR-5",
      "username": "data_5",
      "password": "$2a$12$GBb0QJxnGqmmEnKLNT3/auyTHNlFFn2gF.3uIkhfmaKzyTnbaTZXO",
      "email": "data_5@example.com",
      "created_at": "2024-06-17T10:19:56.099Z",
      "updated_at": "2024-06-17T10:19:56.099Z"
    },
    {
      "id": "ee5190fe-3be6-4e67-9cf3-ab66eb003753",
      "user_code": "USR-6",
      "username": "data_6",
      "password": "$2a$12$lTE7W3WxE6/fk.snVNMiGe9N8NhjsD4SXyMr40Vv2e8nFZJZiY9GK",
      "email": "data_6@example.com",
      "created_at": "2024-06-17T10:19:56.283Z",
      "updated_at": "2024-06-17T10:19:56.283Z"
    },
    {
      "id": "a2007256-d28d-4507-89e7-bcb02a0ff6f6",
      "user_code": "USR-7",
      "username": "data_7",
      "password": "$2a$12$n7KU4UK5TUcGX51e4a7lpe1XU5Z509Q9lB3TLORJK05dwIrwd4TpS",
      "email": "data_7@example.com",
      "created_at": "2024-06-17T10:19:56.466Z",
      "updated_at": "2024-06-17T10:19:56.466Z"
    },
    {
      "id": "a51041c7-59c4-48bd-a424-d58ad9a4a532",
      "user_code": "USR-8",
      "username": "data_8",
      "password": "$2a$12$4zWUinBHoBd04AqxXI.ZbO2gjx6mghcX1RzDl5XG0zSioFedPEerm",
      "email": "data_8@example.com",
      "created_at": "2024-06-17T10:19:56.661Z",
      "updated_at": "2024-06-17T10:19:56.661Z"
    },
    {
      "id": "568118f4-9a32-4a71-80f1-11ae74d0dea6",
      "user_code": "USR-9",
      "username": "data_9",
      "password": "$2a$12$8VtdLjlxZhfltFhFkqBJfOk8RiWiUDkdXlL//a/G2CU5kyaVyQkEO",
      "email": "data_9@example.com",
      "created_at": "2024-06-17T10:19:56.845Z",
      "updated_at": "2024-06-17T10:19:56.845Z"
    },
    {
      "id": "7c29699d-0e22-4c45-ae95-2d78966f6811",
      "user_code": "USR-10",
      "username": "data_10",
      "password": "$2a$12$ReH8Li/JwOlcMEg28VAQwedDJXB8152stHQZRBtGuewA0nnPyWOUa",
      "email": "data_10@example.com",
      "created_at": "2024-06-17T10:19:57.029Z",
      "updated_at": "2024-06-17T10:19:57.029Z"
    }
  ],
  "path": "http://localhost:3000/api/v1/users/view?page=1",
  "amount": 12,
  "current_page": 1,
  "total_pages": 2,
  "total_search_data": 10
}
```

#### Ketika Halaman Tidak Memiliki Data

Jika halaman yang diminta tidak memiliki data apapun, tanggapan yang diharapkan adalah:

```json
{
  "status": "failed",
  "status_code": 400,
  "message": "Page number exceeds total pages",
  "path": "http://localhost:3000/api/v1/users/view?page=3"
}
```

### Catatan Penting
- Pastikan server lokal Anda berjalan pada port 3000 dan API sudah didefinisikan dengan benar sesuai dengan skrip yang diberikan.
- Gunakan Postman atau alat serupa untuk menguji API dan memverifikasi bahwa tanggapan sesuai dengan yang diharapkan.
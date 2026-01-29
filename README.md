# MinIO (mc) Upload & Download Script

Script bash ini digunakan untuk melakukan **upload dan download file** antara **S3 Storage (MinIO)** dan **local server** menggunakan **MinIO Client (`mc`)**.

Script bersifat **interaktif & dinamis**, sehingga tidak perlu mengubah kode setiap kali ingin:
- Ganti bucket
- Ganti directory lokal
- Upload atau download
- Transfer 1 file atau banyak file sekaligus

---

## ✨ Fitur Utama

- ✅ Pilih **Upload atau Download**
- ✅ Input **S3 bucket & local directory** secara dinamis
- ✅ Support **1 file atau multiple file (array)**
- ✅ Looping otomatis
- ✅ Validasi input dasar
- ✅ Menggunakan `mc cp` (MinIO client)

---

## 🧰 Prasyarat

Pastikan environment sudah memenuhi syarat berikut:

- Linux (Ubuntu 20.04 / 22.04 direkomendasikan)
- MinIO Client (`mc`) sudah terinstall
- Alias MinIO / S3 sudah dikonfigurasi

---

### Cek MinIO Client
```bash
mc --version
```

---

```bash

Hallo

```

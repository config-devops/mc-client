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

curl -O https://raw.githubusercontent.com/config-devops/mc-client/refs/heads/main/transfer_mcMinio.sh

sudo chmod +x transfer_mcMinio.sh

./transfer_mcMinio.sh

```

---

## 🧭 Alur Interaktif Script
1. Pilih Aksi
  - 1. Download (S3 ➜ Local)
  - 2. Upload   (Local ➜ S3)
2. Input Path
  - Masukkan path S3    : Data-db/bucket-file/backup-baremetal-db
  - Masukkan path Local : /home/devops
3. Pilih Mode File
  - 1) 1 file saja
  - 2) Lebih dari 1 file
4. Input Nama File
   - Mode 1 file
   ```text
    Nama file: Data1
   ```
   - Mode multiple file
   ```text
    Data1
    Data2
    Data3
   ```

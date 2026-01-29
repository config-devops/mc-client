#!/bin/bash
set -e

echo "=============================="
echo "  MinIO (mc) Transfer Script "
echo "=============================="

#====

if ! command -v mc >/dev/null 2>&1; then
  echo "❌ MinIO client (mc) tidak ditemukan"
  exit 1
fi

#====

echo ""
echo "Pilih aksi:"
echo "1) Download (S3 ➜ Local)"
echo "2) Upload   (Local ➜ S3)"
read -rp "Masukkan pilihan [1/2]: " ACTION

if [[ "$ACTION" != "1" && "$ACTION" != "2" ]]; then
  echo "❌ Pilihan tidak valid"
  exit 1
fi

#====

read -rp "Masukkan path S3 (contoh: btu-db/bucket-file/backup-baremetal-db): " BUCKET
read -rp "Masukkan path Local (contoh: /home/devops): " DEST

if [[ -z "$BUCKET" || -z "$DEST" ]]; then
  echo "❌ Bucket dan Destination tidak boleh kosong"
  exit 1
fi

#====

echo ""
echo "Download / Upload:"
echo "1) 1 file saja"
echo "2) Lebih dari 1 file"
read -rp "Masukkan pilihan [1/2]: " FILE_MODE

FILES=()

if [[ "$FILE_MODE" == "1" ]]; then
  read -rp "Masukkan nama file: " SINGLE_FILE
  FILES+=("$SINGLE_FILE")

elif [[ "$FILE_MODE" == "2" ]]; then
  echo "Masukkan nama file satu per satu (ketik 'done' jika selesai):"
  while true; do
    read -rp "> " FILE
    [[ "$FILE" == "done" ]] && break
    FILES+=("$FILE")
  done
else
  echo "❌ Pilihan tidak valid"
  exit 1
fi

echo ""
echo "🚀 Memulai proses..."

for FILE in "${FILES[@]}"; do
  if [[ "$ACTION" == "1" ]]; then
    echo "⬇️  Downloading $FILE ..."
    mc cp "$BUCKET/$FILE" "$DEST/"
  else
    echo "⬆️  Uploading $FILE ..."
    mc cp "$DEST/$FILE" "$BUCKET/"
  fi
done

echo ""
echo "✅ Proses selesai"

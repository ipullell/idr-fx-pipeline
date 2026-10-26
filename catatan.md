Yang perlu diperbaiki (petunjuk, bukan jawaban)
Bagian	Masalah	Petunjuk
json.load(data, indent=4)	Salah fungsi dan urutan argumen	Dari tabel empat fungsi di Hari 2, mana yang menulis ke file? Data dulu, lalu file.
with open(file, "w", ...):	Tidak ada as f	Tanpa nama, objek filenya tidak bisa dipakai di dalam with.
file dibuat di __main__ tapi dipakai di extract()	Variabel di luar fungsi tidak otomatis terlihat	Ingat variabel lokal dari Hari 5. Pembuatan alamat file milik fungsi.
f"rates_..." / folder	Operator / bekerja kalau yang kiri adalah Path	Urutannya terbalik.
%Y-%M-%D	%M itu menit, dan %D bukan tanggal biasa	Bulan dan tanggal memakai huruf kecil. Cek lagi tabel kode %.
format="(%( )s ..."	Nama field salah	Dua yang dibutuhkan: asctime dan levelname. Kurung di luar tidak perlu.
Exception.requests.Excaption.Requests	Nama dan urutannya kacau	Bentuknya requests.exceptions.<Nama>, dan namanya sudah kamu tulis benar di Hari 6.
Tidak ada return	Poin 4 tes belum terpenuhi	Fungsi harus mengembalikan alamat file.
## Day 1 · 19 October 2026

### 🎯 Task
>Buat sendiri daftar kurs tiruan: sebuah list berisi beberapa dictionary, tiap dictionary berisi mata uang dan nilainya (isi angkanya bebas, ini hanya latihan). Lalu tulis kode yang menampilkan mata uang yang nilainya di atas angka pilihanmu, dan satu kasus di mana salah satu dictionary tidak punya kunci nilai, tanpa membuat programmu error.

**🚪 Gate Hari 1:** -


### 🧩Problem
Gua masih bingung membedakan tuple, list dan dictianory terutama pada saat memanggil isi dari 3 tipe data tersebut

### ✅ Status
selesai pada tnggal 20 oct

---

## Day 2 · 20 October 2026

### 🎯 Task

- [x] Buat folder data/raw lewat kode. Jalankan dua kali dan pastikan tidak error pada jalan kedua.
- [x] Simpan daftar_kurs dari Hari 1 ke data/raw/kurs_tiruan.json.
- [x] Buka file itu di editor. Perhatikan bagaimana None tertulis.
- [x] Baca kembali file itu dengan Python, lalu cetak mata uang yang nilainya di atas 10 memakai kode Hari 1-mu.
- [x] pastikan data/ ada di .gitignore sebelum commit.

**🚪 Gate:** jelaskan beda json.load dan json.loads, dan buat folder baru lewat kode tanpa melihat catatan.

### 🧩Problem
gua masih melihat catatan dari claude ai untuk membantu gua menulis kode tetapi gua lumayan paham isinya, gua masih belum bisa membedakan fungsi" json seperti json.load() | json.loads() | json.dump() | json.dumps() karna sudah 90 menit belajar saya lanjut kan besok

### ✅ Status
Selesai, json.load itu cara python untuk memudahkan mewmbaca suatu file yg berisikan file json, sedangkan json.loads ituu gunanya untuk menekstrak data json yg berbentuk string menjadi dictionary/list yg bsa di baca python. 

---

## Day 3 · 21 October 2026

### 🎯 Task

- [x] Panggil https://api.frankfurter.dev/v2/rates dengan requests.
- [x] Cetak status code-nya.
- [x] Cetak type(data) dan len(data).
- [x] Dari tipe itu, tentukan cara mengambil satu elemen pertama dan cetak.
- [x] Cocokkan dengan yang kamu lihat di browser.
- [x] Opsional: ubah alamatnya jadi salah satu huruf, lalu lihat status code-nya.

**🚪 Gate:** jelaskan arti status 200 dan apa isi response.json().

### 🧩Problem
Gua harusnya memakai try except agar bisa menangkap kondisi error requests saat gua mengerjakan tugas opsional nya, tetapi karna gua lupa syntax untuk menangkap kondisi error requests jdi gua ganti aja pake if else ehehee

### ✅ Status
Sukses, "status code yg kisaran 200 artinya requests berhasil dan data bisa di ambil, sedangkan isi response.json itu berformat list yg berisi banyak sekali dictionary."

## Day 4 · 22 October 2026 > _"membaca struktur data"_

### 🎯 Task

- [x] Dari hasil print(data[0])-mu, sebutkan semua kuncinya dan artinya menurutmu.
- [x] Pakai loop untuk mencetak quote dan rate dari 5 elemen pertama (jangan semuanya).
- [ ] Cari elemen yang quote-nya "IDR" dan cetak nilai rate-nya. Polanya sama dengan filter di Hari 1.
- [ ] Lihat format date-nya. Bandingkan dengan tanggal hari ini; kalau berbeda, cari tahu kenapa di dokumentasi Frankfurter. Pertanyaan ini akan berguna untuk incremental load di Minggu 3.

**🚪 Gate:**  jelaskan jalur dari response sampai ke satu angka kurs IDR, dengan kata-katamu sendiri (misalnya: dari response, ke data, ke elemen mana, ke kunci apa).

### 🧩Problem

### ✅ Status
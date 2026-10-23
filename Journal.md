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
Gua memakai cara yg terlalu ribet di awal dengan menggunakan looping untuk hanya menampilkan 5 baris pertama yg pdahl bisa memakai cara yg lebih simple dengan menggunakan `data[:5]` << untuk menampilkan 5 baris pertamanya, dann gua juga tugas pertama gua selesai dengan kesalahan, gua ikut menampilkan value nya padahal cuman disuruh menampilkan key dari setiap datanya, gua belum tau fungsi .keys(). dann gua salah memahami maksud dari codingan gua yg awalnya seperti ini

Gate::: hmm dari codingan gua awalnya response meminta memanggil api dengan requests.get(url) kemudian try melihat apakah status code 200? ataukah error? kemudian variabel data mengambil data yg udh ada di dalam variabel response, kemudian di ambil pake format json. hehehe gitu sih menurut gua. kemudian tinggal print data[0] baris pertama

kemudian gua revisi karna di koreksi claude masih banyak salah, menjadi begini (dibawah), dan gua juga baru tau jika response api selain 200 bukan di anggap error, danitu guna nya raise_for_status.

### ✅ Status

Berahasil, pada awalnya gua mencoba mengurung proses nya didalm try-except untuk menangani internet mati dan  timeout, kemudian gua meminta data dengan menggunakan library requests, dan kemudian gua buat agar data tersbut bisa dipakai oleh python dengan menggunakan response.json() kemudian gua tampilkan semua key di datanya dengan cara print(data[0].keys()), lalu gua menggunakan looping untuk memprint semua data yg gua mau dengan cara memfilter menggunakan fungsi if jika key quote berisikan vallue IDR, maka tampilkan value rate dan date nya di terminal lalu program gua hentikan menggunakan break. dan jika program error karna internet mati gua sudah menangani nya dengan except dan info error nya karna apa.

dan "Satu pertanyaan masih belum kamu jawab, dan penting untuk desain pipeline: untuk elemen IDR, base-nya apa, dan angka rate itu artinya apa dalam kalimat biasa?" >> elemen idr itu basenya adalah eur, sedangkan rate itu adalah hasil konversi dari nilai mata uang eur ke idr. simple na sih gituu

## Day 5 · 23 October 2026 > _" fungsi extract()"_


### 🎯 Task

Di extract.py proyekmu, tulis fungsi extract() yang:

1. memanggil API Frankfurter seperti di Hari 3-4 (pertahankan try/except-mu),
2. menyimpan seluruh isi respons apa adanya ke data/raw/ dengan nama berisi cap waktu (misalnya rates_<cap_waktu>.json),
3. mengembalikan alamat file yang disimpan.

*Beberapa catatan:*

1. Jangan filter IDR di sini. Menyimpan semuanya adalah tugas raw; menyaring itu urusan transform di Minggu 2.
2. Jalankan dari folder utama proyek, bukan dari dalam src/. Alamat relatif seperti data/raw dihitung dari tempat kamu menjalankan program.
3. Jalankan dua kali; harus ada dua file berbeda. Buka satu file dan pastikan isinya JSON yang valid.

**🚪 Gate:**  extract() berdiri sendiri (tidak mencetak hasil filter dan tidak mengandung logika IDR), menghasilkan satu file per eksekusi, dan kamu bisa menjelaskan kenapa fungsi itu mengembalikan alamat file, bukan datanya.

### 🧩Problem
Gua kurang memahami maksud mengembalikan dari pertanyaan claude, ternyata mengembalikan yg dimaksud adalah menggunakan fungsi retrun wkwkwkw

### ✅ Status
Berhasil, gampang nya karna gua ngasih retrun yg berfungsi untuk mengembalikan sesuatu agar bisa di pake di luar fungsi gua. dan karna gua retrun variabel file yg berisikn alamat file maka yg tampil di terminal saat gua mencetak variabel raw(yg didalam nya adlah fungsi extract) adalah alamat file nya
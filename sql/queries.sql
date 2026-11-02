-- Tampilkan semua kolom dan semua baris.

SELECT * from pesanan;

-- Tampilkan hanya quote dan rate, dengan rate beralias kurs.

SELECT quote, rate as kurs from rates;

-- Tampilkan daftar quote yang unik, urut A-Z.

SELECT quote from rates ORDER BY quote desc;

-- Tampilkan baris dengan quote = 'IDR'.

SELECT quote from rates
where quote = 'IDR';

-- Tampilkan baris dengan rate di atas 100, dari yang terbesar.

SELECT rate from rates
where rate > 100
ORDER BY rate DESC;

-- Tampilkan baris yang quote-nya salah satu dari tiga kode pilihanmu.

SELECT quote from rates
where quote = 'USD';

-- Tampilkan tiga baris dengan rate terbesar.

SELECT rate from rates
ORDER BY rate desc
limit 3; -- (2 di awal yg tampil adalah null)

-- Hitung total baris di tabel.

SELECT COUNT(*) from rates

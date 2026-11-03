-- DAY 1 RECOVER QUERIES

-- Tampilkan semua kolom dan semua baris.

SELECT * from rates; -- salah karna gua pake pesanan sebelumnya harusnya rates

-- Tampilkan hanya quote dan rate, dengan rate beralias kurs.

SELECT quote, rate as kurs from rates;

-- Tampilkan daftar quote yang unik, urut A-Z.

SELECT DISTINCT quote from rates ORDER BY quote;

-- Tampilkan baris dengan quote = 'IDR'.

SELECT * from rates
where quote = 'IDR';

-- Tampilkan baris dengan rate di atas 100, dari yang terbesar.

SELECT * from rates
where rate > 100
ORDER BY rate DESC;

-- Tampilkan baris yang quote-nya salah satu dari tiga kode pilihanmu.

SELECT * FROM rates 
WHERE quote IN ('IDR', 'JPY', 'USD');

-- Tampilkan tiga baris dengan rate terbesar.

SELECT * from rates
ORDER BY rate desc
where is not null
limit 3; -- (2 di awal yg tampil adalah null)

-- Hitung total baris di tabel.

SELECT COUNT(*) from rates

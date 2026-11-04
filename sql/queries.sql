-- DAY 14 Table, FROM, SELECT

-- 1. Tampilkan semua kolom dan semua baris. (hasil yang harus cocok: 14 baris, 4 kolom)

SELECT * FROM rates;

-- 2. Tampilkan hanya kolom quote dan rate. (14 baris, 2 kolom)

SELECT quote, rate FROM rates;

-- 3. Tampilkan kolom rate, quote, date dengan urutan itu. (14 baris, 3 kolom)

SELECT rate, quote, "date" FROM rates;

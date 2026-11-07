-- DAY 16 WHAT IS THE NULL?

-- 1. Tampilkan seluruh kolom dari tabel rates yang memiliki rate NULL.

SELECT *
FROM rates
WHERE rate IS NULL;

-- 2. Tampilkan quote dan rate dari tabel rates yang rate-nya tidak NULL.

SELECT *
FROM rates
WHERE rate IS NOT NULL;

-- 3. Tampilkan semua pesanan yang totalnya NULL atau lebih besar dari 100000.

SELECT *
FROM pesanan
WHERE total IS NULL OR total > 100000;

-- 4. Hitung jumlah seluruh pesanan dan jumlah pesanan yang memiliki total tersedia. Tampilkan keduanya dalam satu query.

SELECT COUNT(*) AS Jumlah_pesanan, SUM(total) AS Total_pesanan
FROM pesanan
WHERE total IS NOT NULL;
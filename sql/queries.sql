-- DAY 18 SQL Aggregate Functions, GROUP BY, dan HAVING

-- 1. Tim Finance ingin mengetahui ringkasan seluruh transaksi.

SELECT 
COUNT(*) AS jumlah_baris, COUNT(total) AS total_tersedia,
SUM(total) AS total, AVG(total) AS rata_rata,
MIN(total) AS nilai_terendah, MAX(total) AS nilai_tetinggi
FROM pesanan;

-- 2. Tim Regional meminta laporan jumlah dan total transaksi untuk masing-masing kota.

SELECT kota, COUNT(*) AS jumlah_keseluruhan, SUM(total) AS total_transaksi
FROM pesanan
GROUP BY kota;

-- 3. Finance hanya ingin melihat kota yang memiliki total transaksi lebih dari Rp150.000.Buat query yang menampilkan nama kota dan total transaksi per kota.

SELECT kota, COUNT(*) AS jumlah_keseluruhan, SUM(total) AS total_transaksi
FROM pesanan
GROUP BY kota
HAVING SUM(total) > 150000;

-- 4. Tim Data Quality ingin mengetahui kondisi setiap mata uang.

SELECT quote, COUNT(*) AS all_record,
COUNT(rate) AS available_rate, AVG(rate) average_rate
FROM rates
GROUP BY quote;

-- 5. Tim Analytics hanya ingin mengambil mata uang yang rata-rata kursnya lebih besar dari 100.

SELECT quote, COUNT(*) AS all_record,
COUNT(rate) AS available_rate, AVG(rate) average_rate
FROM rates
GROUP BY quote
HAVING AVG(rate) > 100;

--- > Source in database idr-fx-pipeline, table rates and pesanan
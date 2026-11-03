-- DAY 2 NULL, AND/OR, GROUP BY

-- 1. Tampilkan baris yang rate-nya kosong. (petunjuk: IS NULL)

SELECT * FROM rates
WHERE rate IS NULL;

-- 2. Tampilkan baris yang rate-nya tidak kosong.

SELECT * FROM rates
WHERE rate IS NOT NULL;

-- 3. Tampilkan baris tanggal '2026-10-22' yang rate-nya di atas 100.

SELECT *
FROM rates
WHERE rate > 100 AND date = '2026-10-22';

-- 4. Tampilkan baris yang quote-nya USD atau GBP, dan tanggalnya '2026-10-22'.

SELECT *
FROM rates
WHERE (quote = 'USD' OR quote = 'GBP') AND date = '2026-10-22';

-- 5. Tampilkan COUNT(*) dan COUNT(rate) dalam satu query.

SELECT COUNT(*), COUNT(rate)
from rates;

-- 6. Tampilkan jumlah baris per quote (kolom: quote, jumlah).

SELECT quote, COUNT(*) AS jumlah
FROM rates
GROUP BY quote;

-- 7. Tampilkan quote dan rata-rata rate-nya per quote, hanya yang rata-ratanya di atas 100.

SELECT quote, AVG(rate) as rata_rata
FROM rates
GROUP BY quote
HAVING AVG(rate) > 100;
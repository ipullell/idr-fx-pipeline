-- DAY 15 WHERE

-- 1. Tampilkan semua kolom untuk baris yang quote-nya 'IDR'. (2 baris: tanggal 21 dan 22)

select * from rates
where quote = 'IDR';

-- 2. Tampilkan quote dan rate untuk baris yang rate-nya lebih besar dari 100. (4 baris: IDR dua kali, JPY dua kali)

select quote, rate from rates
where rate > 100;

-- 3. Tampilkan semua kolom untuk baris yang date-nya '2026-10-22'. (7 baris)

select * from rates
where date = '2026-10-22';

-- 4. Tampilkan semua kolom untuk baris yang quote-nya bukan 'XAU'. (12 baris)

select * from rates
where quote <> 'XAU';

-- 5. Tampilkan quote dan rate untuk baris yang rate-nya 4.253 atau lebih. (6 baris)

select quote, rate from rates
where rate >= 4.253;
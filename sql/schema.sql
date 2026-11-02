-- Create Tabel pesanan
CREATE TABLE pesanan (id INTEGER, pelanggan TEXT, kota TEXT, total NUMERIC);
INSERT INTO pesanan VALUES
 (1, 'Ani',   'Banjarmasin', 50000),
 (2, 'Budi',  'Makassar',    120000),
 (3, 'Citra', 'Banjarmasin', 75000),
 (4, 'Dedi',  'Jakarta',     NULL),
 (5, 'Anto',  'Makassar',    90000);

-- Create tabel rates
CREATE TABLE rates (
    date  DATE,
    base  TEXT,
    quote TEXT,
    rate  NUMERIC
);
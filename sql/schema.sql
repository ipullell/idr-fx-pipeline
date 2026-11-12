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


-- Create Tabel pelanggan
CREATE TABLE IF NOT EXISTS pelanggan (
    id_pelanggan INT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL
);

-- Create Tabel transaksi
CREATE TABLE IF NOT EXISTS transaksi (
    id_transaksi INT PRIMARY KEY,
    id_pelanggan INT,
    total NUMERIC(12, 2)
);
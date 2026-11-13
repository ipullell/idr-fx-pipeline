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

-- =====================================================
-- TABEL BELAJAR JOIN
-- Satu department dapat memiliki banyak employee.
-- =====================================================

CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    office_city VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    employee_name VARCHAR(80) NOT NULL,
    department_id INTEGER,
    monthly_salary DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(80) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(12,2) NOT NULL
);

CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY,
    product_id INTEGER,
    quantity INTEGER NOT NULL,
    sale_date DATE NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
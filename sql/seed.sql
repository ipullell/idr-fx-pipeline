-- Data rates
INSERT INTO rates (date, base, quote, rate) VALUES
('2026-10-21', 'EUR', 'IDR', 20150.0),
('2026-10-21', 'EUR', 'USD', 1.162),
('2026-10-21', 'EUR', 'JPY', 178.9),
('2026-10-21', 'EUR', 'AED', 4.268),
('2026-10-21', 'EUR', 'SGD', 1.508),
('2026-10-21', 'EUR', 'GBP', 0.871),
('2026-10-21', 'EUR', 'XAU', NULL),
('2026-10-22', 'EUR', 'IDR', 20207.0),
('2026-10-22', 'EUR', 'USD', 1.158),
('2026-10-22', 'EUR', 'JPY', 178.4),
('2026-10-22', 'EUR', 'AED', 4.253),
('2026-10-22', 'EUR', 'SGD', 1.505),
('2026-10-22', 'EUR', 'GBP', 0.869),
('2026-10-22', 'EUR', 'XAU', NULL);

-- Data pelanggan
INSERT INTO pelanggan (id_pelanggan, nama)
VALUES
    (1, 'Ani'),
    (2, 'Budi'),
    (3, 'Citra'),
    (4, 'Dedi')
ON CONFLICT (id_pelanggan) DO NOTHING;

-- Data transaksi
INSERT INTO transaksi (id_transaksi, id_pelanggan, total)
VALUES
    (101, 1, 50000),
    (102, 2, 120000),
    (103, 1, 75000),
    (104, 5, 90000)
ON CONFLICT (id_transaksi) DO NOTHING;

-- =====================================================
-- TABEL BELAJAR JOIN
-- Satu department dapat memiliki banyak employee.
-- =====================================================

INSERT INTO departments VALUES
(10, 'Engineering', 'Jakarta'),
(20, 'Finance', 'Surabaya'),
(30, 'Marketing', 'Bandung'),
(40, 'Human Resources', 'Jakarta'),
(50, 'Operations', 'Makassar'),
(60, 'Legal', 'Yogyakarta');

INSERT INTO employees VALUES
(1001, 'Alya Putri', 10, 8500000),
(1002, 'Bima Saputra', 10, 7800000),
(1003, 'Citra Dewi', 20, 7200000),
(1004, 'Danu Pratama', 20, 6900000),
(1005, 'Eka Lestari', 30, 6500000),
(1006, 'Farhan Akbar', 30, 6700000),
(1007, 'Gita Maharani', 10, 9000000),
(1008, 'Hadi Wijaya', 40, 6000000),
(1009, 'Intan Permata', 50, 6200000),
(1010, 'Joko Santoso', 50, 6100000),
(1011, 'Kirana Putri', NULL, 5800000),
(1012, 'Lukman Hakim', NULL, 5900000);

INSERT INTO products VALUES
(201, 'Keyboard Mechanical', 'Accessories', 450000),
(202, 'Mouse Wireless', 'Accessories', 175000),
(203, 'Monitor 24 Inch', 'Monitor', 1850000),
(204, 'Laptop Stand', 'Accessories', 275000),
(205, 'USB-C Hub', 'Accessories', 390000),
(206, 'Webcam HD', 'Camera', 525000),
(207, 'Headset Office', 'Audio', 325000),
(208, 'SSD 1TB', 'Storage', 1250000),
(209, 'Microphone USB', 'Audio', 675000),
(210, 'Laptop 14 Inch', 'Computer', 9500000),
(211, 'Desk Lamp', 'Office', 210000),
(212, 'External HDD 2TB', 'Storage', 1100000);

INSERT INTO sales VALUES
(5001, 201, 3, '2026-10-01'),
(5002, 202, 5, '2026-10-01'),
(5003, 203, 2, '2026-10-02'),
(5004, 201, 1, '2026-10-03'),
(5005, 205, 4, '2026-10-04'),
(5006, 206, 2, '2026-10-05'),
(5007, 207, 3, '2026-10-06'),
(5008, 208, 1, '2026-10-07'),
(5009, 202, 2, '2026-10-08'),
(5010, 210, 1, '2026-10-09'),
(5011, 205, 2, '2026-10-10'),
(5012, 209, 2, '2026-10-11'),
(5013, 203, 1, '2026-10-12'),
(5014, 201, 2, '2026-10-13'),
(5015, 207, 1, '2026-10-14'),
(5016, NULL, 1, '2026-10-15');
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

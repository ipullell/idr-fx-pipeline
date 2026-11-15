-- DAY 20 - Evaluasi SQL

-- 1 Dari tabel products, tampilkan produk dengan kategori Accessories.

SELECT product_name, category, unit_price
FROM products
WHERE category = 'Accessories'
ORDER BY unit_price DESC;

-- 2 Dari tabel sales, buat query untuk setiap product_id yang tercatat

SELECT product_id AS code_product, COUNT(product_id) AS jumlah_transaksi, SUM(quantity) AS total_unit_terjual
FROM sales
GROUP BY product_id
ORDER BY total_unit_terjual DESC;

-- 3 Dari tabel sales, tampilkan transaksi yang memiliki quantity minimal 2.

SELECT sale_id, product_id, quantity, sale_date
FROM sales
WHERE quantity >= 2
ORDER BY sale_date DESC;

--- > Source in database idr-fx-pipeline, table sales
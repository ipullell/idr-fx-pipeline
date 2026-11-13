-- DAY 19 - SQL JOIN: INNER JOIN dan LEFT JOIN

-- Requirement 1.

SELECT products.product_name AS nama_produk, products.category AS kategori, sales.sale_id AS id_transaksi, sales.quantity AS jumlah_beli, sales.sale_date AS tanggal_jual
FROM sales
INNER JOIN products ON products.product_id = sales.product_id;

-- Requirement 2.

SELECT products.product_name AS nama_produk, products.product_id AS id_produk, products.category AS kategori, sales.quantity AS jumlah, sales.sale_id AS id_transaksi, sales.sale_date AS tanggal_jual
FROM products
LEFT JOIN sales ON products.product_id = sales.product_id
ORDER BY id_produk;

--- > Source in database idr-fx-pipeline, table products and sales
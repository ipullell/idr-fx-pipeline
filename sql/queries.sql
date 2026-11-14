-- DAY 20 - Evaluasi SQL

-- Soal 1. Buat query untuk menampilkan produk dengan kategori Accessories.

SELECT product_name, category, unit_price
FROM products
ORDER BY unit_price DESC;

-- Soal 2. Buat query untuk menampilkan transaksi penjualan dengan quantity minimal 2.

SELECT * 
FROM sales
WHERE quantity >= 2
ORDER BY sale_date DESC;

-- Soal 3. Buat laporan jumlah transaksi untuk setiap produk.

SELECT product_id, COUNT(sale_id) AS jumlah_transaksi
FROM sales
GROUP BY product_id
HAVING COUNT(sale_id) > 1;

-- Soal 4. Buat laporan total unit terjual untuk setiap produk.

SELECT product_id, COUNT(quantity) AS total_quantity_terjual
FROM sales
GROUP BY product_id
ORDER BY total_quantity_terjual DESC;

-- Soal 5. Buat laporan transaksi penjualan yang memiliki produk terdaftar.

SELECT sales.sale_id, products.product_name, sales.quantity, sales.sale_date
FROM products
INNER JOIN sales ON sales.product_id = products.product_id;

-- Soal 6. Buat laporan seluruh produk, termasuk produk yang belum pernah terjual.

SELECT products.product_id, sales.sale_id, products.product_name, sales.quantity
FROM products
LEFT JOIN sales ON sales.product_id = products.product_id;

-- Soal 7. Buat laporan nama department beserta jumlah employee di setiap department. Department yang belum memiliki employee juga harus tetap muncul.

SELECT departments.department_name, COUNT(employees.employee_id) AS jumlah_employee
FROM departments
LEFT JOIN employees ON departments.department_id = employees.department_id
GROUP BY departments.department_name;

--- > Source in database idr-fx-pipeline, table employees and departments
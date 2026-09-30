-- ============================================================
-- Lab 4: Delta Lake Time Travel & Cloning
-- ============================================================

USE lab_db;

-- 1. View Delta table history
DESCRIBE HISTORY customers;

-- 2. Time Travel: view historical versions
SELECT * FROM customers VERSION AS OF 0;

SELECT * FROM customers VERSION AS OF 1;

SELECT * FROM customers VERSION AS OF 2;

-- 3. Create a shallow clone
CREATE TABLE customers_shallow_clone
SHALLOW CLONE customers;

-- 4. Create a deep clone
CREATE TABLE customers_deep_clone
DEEP CLONE customers;

-- 5. Verify shallow clone
SELECT * FROM customers_shallow_clone;

-- 6. Verify deep clone
SELECT * FROM customers_deep_clone;

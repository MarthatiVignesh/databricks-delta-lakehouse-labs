-- ============================================================
-- LAB 01: Databricks Relational Entities & SQL DDL/DML
-- ============================================================

-- Step 1: Create Schema
CREATE SCHEMA IF NOT EXISTS lab_db;

USE lab_db;


-- Step 2: Create Customers Delta Table
CREATE OR REPLACE TABLE customers (
    customer_id INT,
    name STRING,
    email STRING,
    signup_date DATE,
    status STRING
)
USING DELTA;


-- Step 3: Insert Customer Records
INSERT INTO customers VALUES
(101, 'Alice Smith', 'alice@example.com', '2024-01-15', 'Active'),
(102, 'Bob Jones', 'bob@example.com', '2024-02-01', 'Pending');


-- Step 4: Verify Insert
SELECT * FROM customers;


-- Step 5: MERGE / UPSERT
MERGE INTO customers AS target
USING (
    SELECT
        102 AS customer_id,
        'Bob Jones' AS name,
        'bob_new@example.com' AS email,
        CAST('2024-02-01' AS DATE) AS signup_date,
        'Active' AS status
) AS source

ON target.customer_id = source.customer_id

WHEN MATCHED THEN
    UPDATE SET
        target.email = source.email,
        target.status = source.status

WHEN NOT MATCHED THEN
    INSERT *;


-- Step 6: Final Verification
SELECT * FROM customers;

-- Lab 5: Delta Storage Optimization
-- Source: Databricks & Delta Lakehouse Practice Guide

USE lab_db;

-- Compact small files and apply Z-ORDER clustering
OPTIMIZE lab_db.customers
ZORDER BY (customer_id, signup_date);

-- Enable parallel deletion for VACUUM
SET spark.databricks.delta.vacuum.parallelDelete.enabled = true;

-- Remove unreferenced files older than 7 days
VACUUM lab_db.customers RETAIN 168 HOURS;

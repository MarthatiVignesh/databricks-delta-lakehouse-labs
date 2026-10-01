-- Lab 8: Silver to Gold & SCD Type 2 Upserts
-- Source: Databricks & Delta Lakehouse Practice Guide

USE lab_db;

-- SCD Type 2 merge pattern into Gold customer dimension
MERGE INTO lab_db.gold_dim_customers AS target
USING (
    SELECT customer_id AS merge_key,
           name,
           email,
           current_date() AS effective_date,
           true AS is_current
    FROM staging_updates

    UNION ALL

    SELECT NULL AS merge_key,
           name,
           email,
           current_date() AS effective_date,
           true AS is_current
    FROM staging_updates
) AS source
ON target.customer_id = source.merge_key

WHEN MATCHED AND target.is_current = true THEN
    UPDATE SET
        target.is_current = false,
        target.end_date = current_date()

WHEN NOT MATCHED THEN
    INSERT (
        customer_id,
        name,
        email,
        effective_date,
        end_date,
        is_current
    )
    VALUES (
        source.merge_key,
        source.name,
        source.email,
        source.effective_date,
        NULL,
        true
    );

# Lab 3 – Delta Lake ACID Transactions, Schema Enforcement & Schema Evolution

## Objective

Practice Delta Lake schema evolution by adding a new column to an existing Delta table using `mergeSchema`.

## Tasks Performed

- Created the `customers` Delta table.
- Inserted the initial customer records.
- Created a new DataFrame containing Charlie and a new `membership_tier` column.
- Appended the new data to the Delta table.
- Used `mergeSchema = true` to evolve the existing table schema.
- Verified the evolved schema.
- Verified the final table data.

## Initial Schema

| Column | Data Type |
|---|---|
| customer_id | INT |
| name | STRING |
| email | STRING |

## Evolved Schema

| Column | Data Type |
|---|---|
| customer_id | INT |
| name | STRING |
| email | STRING |
| membership_tier | STRING |

## Final Result

| customer_id | name | email | membership_tier |
|---:|---|---|---|
| 101 | Alice Smith | alice@example.com | NULL |
| 102 | Bob Jones | bob@example.com | NULL |
| 103 | Charlie | charlie@example.com | Gold |

## Schema Evolution

The following option was used:

```python
.option("mergeSchema", "true")
```

This allowed the new `membership_tier` column to be added while appending Charlie to the existing Delta table.

## Technologies

- Databricks
- PySpark
- Delta Lake
- Delta Tables
- Schema Evolution

## Reference

This lab follows the Delta Lake ACID Transactions, Schema Enforcement & Evolution section of the Databricks & Delta Lakehouse Practice Guide.

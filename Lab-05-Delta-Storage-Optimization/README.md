# Lab 5 – Delta Storage Optimization

## Objective
Demonstrate Delta Lake storage optimization using OPTIMIZE, Z-ORDER, and VACUUM.

## Operations
1. Compact small Parquet files with OPTIMIZE.
2. Apply Z-ORDER on customer_id and signup_date.
3. Enable parallel deletion.
4. Run VACUUM with 168 hours retention.

## Source
Based directly on Lab 5 of the Databricks & Delta Lakehouse Practice Guide.

## Files
- Lab-05-Delta-Storage-Optimization.sql
- output/01-optimize-zorder.txt
- output/02-vacuum.txt

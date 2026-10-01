# Lab 8 – Silver to Gold & SCD Type 2 Upserts

## Objective
Build curated Gold data and demonstrate a Delta MERGE pattern for Slowly Changing Dimension Type 2 history tracking.

## SCD Type 2 Flow
A current customer record is expired by setting is_current=false and end_date=current_date(). A new active record is inserted with is_current=true.

## Important
The practice guide specifies the SCD Type 2 MERGE implementation shown in the SQL file. The guide also states the objective includes a daily-revenue Gold aggregation, but its supplied code section provides the SCD Type 2 MERGE pattern.

## Files
- Lab-08-Silver-to-Gold-SCD2.sql
- output/01-scd2-merge.txt

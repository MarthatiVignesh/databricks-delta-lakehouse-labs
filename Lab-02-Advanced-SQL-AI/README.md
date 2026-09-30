# Lab 2 – Advanced SQL Querying, Aggregations & AI Functions

## Objective

Practice advanced SQL querying in Databricks using Delta tables, window functions, and AI functions.

## Tasks Performed

- Created the `review_logs` Delta table.
- Inserted sample customer review data.
- Used `SELECT` to verify the records.
- Used `DENSE_RANK()` to rank reviews based on rating.
- Used `ai_analyze_sentiment()` to analyze review sentiment.

## Table Structure

| Column | Data Type |
|---|---|
| review_id | INT |
| customer_id | INT |
| rating | INT |
| review_text | STRING |

## Sample Data

| review_id | customer_id | rating | review_text |
|---:|---:|---:|---|
| 1 | 101 | 5 | Excellent product and fast delivery |
| 2 | 102 | 2 | Very poor quality and late delivery |

## Final Result

| review_id | rating | rating_rank | sentiment |
|---:|---:|---:|---|
| 1 | 5 | 1 | positive |
| 2 | 2 | 2 | negative |

## Technologies

- Databricks
- Databricks SQL
- Delta Lake
- SQL Window Functions
- AI Functions

## Reference

This lab follows the Advanced SQL Querying, Aggregations & AI Functions section of the Databricks & Delta Lakehouse Practice Guide.

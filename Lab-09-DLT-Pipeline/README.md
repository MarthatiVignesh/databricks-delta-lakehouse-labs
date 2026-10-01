# Lab 9 – Declarative Pipeline Development with Delta Live Tables

## Objective
Construct a Medallion pipeline with DLT using Bronze ingestion, Silver data-quality expectations, and a Gold reporting view.

## Layers
Bronze: Auto Loader JSON ingestion.
Silver: DLT expectations for valid amount and customer.
Gold: Aggregation by customer_id.

## Data Quality Expectations
- valid_amount: amount > 0
- valid_customer: customer_id IS NOT NULL

## Files
- Lab-09-DLT-Pipeline.py
- output/01-dlt-pipeline.txt

# Lab 7 – Bronze to Silver Streaming Cleanse & Deduplication

## Objective
Build the Silver layer from Bronze using streaming, watermarking, deduplication, and data-quality filters.

## Pipeline
Bronze Delta → validation → 10-minute watermark → deduplication → Silver Delta

## Data Quality
- customer_id must not be null.
- amount must be greater than 0.
- Watermark: 10 minutes on order_timestamp.
- Duplicate key: order_id and order_timestamp.

## Files
- Lab-07-Bronze-to-Silver.py
- output/01-silver-stream.txt

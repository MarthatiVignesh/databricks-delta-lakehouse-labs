# Lab 6 – Incremental File Ingestion with Auto Loader

## Objective
Use Databricks Auto Loader (cloudFiles) to incrementally ingest JSON files into a Bronze Delta table.

## Pipeline
Landing JSON files → Auto Loader → Bronze Delta table

## Configuration
- Landing path: /tmp/lab_landing/orders/
- Schema/checkpoint path: /tmp/lab_checkpoints/orders_autoloader/
- Source format: JSON
- Trigger: availableNow=True
- Target: lab_db.bronze_orders

## Files
- Lab-06-Auto-Loader.py
- output/01-autoloader.txt

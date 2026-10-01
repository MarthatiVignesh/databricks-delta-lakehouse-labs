# Lab 10 – Databricks Jobs & Unity Catalog

## Objective
Demonstrate Unity Catalog permissions and a multi-task Databricks Job with task dependencies.

## Unity Catalog
The guide grants:
- USE CATALOG on main to data_analysts
- USE SCHEMA on main.lab_db to data_analysts
- SELECT on main.lab_db.gold_daily_sales to data_analysts

## Job
The supplied Job JSON defines:
1. Ingest_AutoLoader
2. Run_DLT_Pipeline, dependent on Ingest_AutoLoader

The practice guide objective also mentions retries, timeouts, and failure notifications; the supplied JSON in the guide does not contain those fields, so they are not added here.

## Files
- Lab-10-Unity-Catalog.sql
- Lab-10-Databricks-Job.json
- output/01-unity-catalog.txt
- output/02-job-orchestration.txt

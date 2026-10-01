-- Lab 10: Unity Catalog Data Governance
-- Source: Databricks & Delta Lakehouse Practice Guide

GRANT USE CATALOG ON CATALOG main TO `data_analysts`;
GRANT USE SCHEMA ON SCHEMA main.lab_db TO `data_analysts`;
GRANT SELECT ON TABLE main.lab_db.gold_daily_sales TO `data_analysts`;

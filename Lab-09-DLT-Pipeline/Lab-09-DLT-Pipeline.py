# Lab 9: Declarative Pipeline Development with Delta Live Tables
# Source: Databricks & Delta Lakehouse Practice Guide

import dlt
from pyspark.sql.functions import col

@dlt.table(comment="Raw Bronze ingestion from storage")
def dlt_bronze_orders():
    return (spark.readStream
        .format("cloudFiles")
        .option("cloudFiles.format", "json")
        .load("/tmp/lab_landing/orders/"))

@dlt.table(comment="Cleansed Silver orders table")
@dlt.expect_or_drop("valid_amount", "amount > 0")
@dlt.expect_or_drop("valid_customer", "customer_id IS NOT NULL")
def dlt_silver_orders():
    return dlt.read_stream("dlt_bronze_orders").dropDuplicates(["order_id"])

@dlt.view(comment="Gold aggregations materialized view")
def dlt_gold_daily_sales():
    return (dlt.read("dlt_silver_orders")
        .groupBy("customer_id")
        .sum("amount").alias("total_spent"))

# Lab 7: Bronze to Silver Streaming Cleanse & Deduplication
# Source: Databricks & Delta Lakehouse Practice Guide

from pyspark.sql.functions import col

df_bronze = spark.readStream.table("lab_db.bronze_orders")

# Data quality filtering, watermarking and deduplication
df_silver = (df_bronze
    .filter(col("customer_id").isNotNull() & (col("amount") > 0))
    .withWatermark("order_timestamp", "10 minutes")
    .dropDuplicates(["order_id", "order_timestamp"]))

# Write cleansed records to Silver
(df_silver.writeStream
    .format("delta")
    .option("checkpointLocation", "/tmp/checkpoints/silver_orders/")
    .outputMode("append")
    .table("lab_db.silver_orders"))

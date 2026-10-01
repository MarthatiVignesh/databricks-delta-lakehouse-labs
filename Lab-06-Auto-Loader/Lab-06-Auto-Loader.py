# Lab 6: Incremental File Ingestion with Auto Loader
# Source: Databricks & Delta Lakehouse Practice Guide

landing_path = "/tmp/lab_landing/orders/"
checkpoint_path = "/tmp/lab_checkpoints/orders_autoloader/"

# Auto Loader reads new JSON files incrementally
df_stream = (spark.readStream
    .format("cloudFiles")
    .option("cloudFiles.format", "json")
    .option("cloudFiles.schemaLocation", checkpoint_path)
    .load(landing_path))

# Write ingested data to Bronze Delta table
(df_stream.writeStream
    .format("delta")
    .option("checkpointLocation", checkpoint_path + "write/")
    .trigger(availableNow=True)
    .table("lab_db.bronze_orders"))

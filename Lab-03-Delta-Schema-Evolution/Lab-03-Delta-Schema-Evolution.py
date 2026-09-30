# ============================================================
# Lab 3: Delta Lake ACID Transactions, Schema Enforcement
#        & Schema Evolution
# ============================================================

# Create the initial customer data
new_data = [
    (103, "Charlie", "charlie@example.com", "Gold")
]

# Create DataFrame with the new column
new_df = spark.createDataFrame(
    new_data,
    ["customer_id", "name", "email", "membership_tier"]
)

# Append data and enable schema evolution
new_df.write \
    .format("delta") \
    .mode("append") \
    .option("mergeSchema", "true") \
    .saveAsTable("lab_db.customers")

# Verify the evolved table
spark.sql("DESCRIBE lab_db.customers").show(truncate=False)

# Verify the final data
spark.sql(
    "SELECT * FROM lab_db.customers ORDER BY customer_id"
).show(truncate=False)

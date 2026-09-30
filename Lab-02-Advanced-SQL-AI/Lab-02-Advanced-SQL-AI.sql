-- ============================================================
-- Lab 2: Advanced SQL Querying, Aggregations & AI Functions
-- ============================================================

-- Select the lab schema
USE lab_db;

-- Create review_logs table
CREATE OR REPLACE TABLE review_logs (
    review_id INT,
    customer_id INT,
    rating INT,
    review_text STRING
)
USING DELTA;

-- Insert sample review data
INSERT INTO review_logs VALUES
(1, 101, 5, 'Excellent product and fast delivery'),
(2, 102, 2, 'Very poor quality and late delivery');

-- Verify inserted data
SELECT * FROM review_logs;

-- Advanced SQL:
-- Rank reviews by rating and analyze sentiment
SELECT
    review_id,
    customer_id,
    rating,
    review_text,
    DENSE_RANK() OVER (ORDER BY rating DESC) AS rating_rank,
    ai_analyze_sentiment(review_text) AS sentiment
FROM review_logs;

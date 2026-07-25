-- ============================================================
-- STEP 1: Load RAW flipkart data into PostgreSQL (untouched)

  -- create database flipkart_db
-- ============================================================

-- DROP TABLE IF EXISTS flipkart_raw;

-- CREATE TABLE flipkart_raw (
--     order_id         TEXT,
--     order_date       TEXT,     -- kept as TEXT here on purpose, raw data has dirty values
--     customer_id      TEXT,
--     customer_name    TEXT,
--     city             TEXT,
--     state            TEXT,
--     product_id       TEXT,
--     product_name     TEXT,
--     category         TEXT,
--     sub_category     TEXT,
--     price            TEXT,
--     quantity         TEXT,
--     discount         TEXT,
--     payment_method   TEXT,
--     delivery_status  TEXT,
--     rating           TEXT
-- );

-- -- Load CSV directly from your local machine (psql \copy works client-side,
-- -- so path is on YOUR computer, not the server)
-- copy flipkart_raw FROM 'D:/user/3D Objects/flipkart_raw.csv' DELIMITER ',' CSV HEADER;

-- -- Quick  checks
-- SELECT COUNT(*) AS total_rows FROM flipkart_raw;
-- SELECT * FROM flipkart_raw

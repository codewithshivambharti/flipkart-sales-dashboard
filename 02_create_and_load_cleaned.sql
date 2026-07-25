-- DROP TABLE IF EXISTS flipkart_cleaned;

-- CREATE TABLE flipkart_cleaned (
--     order_id         TEXT PRIMARY KEY,
--     order_date       DATE,
--     customer_id      TEXT,
--     customer_name    TEXT,
--     city             TEXT,
--     state            TEXT,
--     product_id       TEXT,
--     product_name     TEXT,
--     category         TEXT,
--     sub_category     TEXT,
--     price            NUMERIC(12,2),
--     quantity         INTEGER,
--     discount         NUMERIC(5,2),
--     payment_method   TEXT,
--     delivery_status  TEXT,
--     rating           NUMERIC(2,1),
--     total_amount     NUMERIC(12,2)
-- );

-- --  checks
-- SELECT COUNT(*) AS total_rows FROM flipkart_cleaned;
-- SELECT category, COUNT(*), SUM(total_amount) AS revenue
-- FROM flipkart_cleaned
-- GROUP BY category
-- ORDER BY revenue DESC;
 
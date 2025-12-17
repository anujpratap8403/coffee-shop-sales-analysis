-- Create database
CREATE DATABASE Coffee_Shop_Sales_DB;
USE Coffee_Shop_Sales_DB;

-- View raw data
SELECT * FROM coffee_shop_sales;
DESCRIBE coffee_shop_sales;

-- Disable safe updates
SET SQL_SAFE_UPDATES = 0;

-- Convert transaction_date from string to DATE
UPDATE coffee_shop_sales
SET transaction_date = STR_TO_DATE(transaction_date, '%d-%m-%Y');

ALTER TABLE coffee_shop_sales
MODIFY transaction_date DATE;

-- Convert transaction_time from string to TIME
UPDATE coffee_shop_sales
SET transaction_time = STR_TO_DATE(transaction_time, '%H:%i:%s');

ALTER TABLE coffee_shop_sales
MODIFY transaction_time TIME;

-- Fix encoding issue in transaction_id column
ALTER TABLE coffee_shop_sales
CHANGE COLUMN ï»¿transaction_id transaction_id INT;

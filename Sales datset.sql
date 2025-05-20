SET GLOBAL local_infile = 1;
DROP TABLE IF EXISTS sales_data;

CREATE TABLE sales_data (
  id INT,
  product_name VARCHAR(100),
  sales_date DATE,
  amount DECIMAL(10,2)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sales_dataset.csv'
INTO TABLE sales_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

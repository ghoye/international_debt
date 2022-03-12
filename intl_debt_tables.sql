CREATE DATABASE international_debt
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

CREATE TABLE international_debt(
	country_name varchar(250),
	country_code char(10),
	indicator_name varchar(250),
	indicator_code varchar(250),
	debt numeric
);

SELECT * FROM international_debt;

COPY international_debt(country_name, country_code, indicator_name, indicator_code, debt)
-- Customize file path
FROM '/Users/ghoye/Documents/International Debt/datasets/international_debt.csv'
DELIMITER ','
CSV header;

SELECT * FROM international_debt;
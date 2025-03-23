# Creating a new database to continue our work on MySQL.
CREATE DATABASE stock_data;

# Using the database we have created.
USE stock_data;

# Renaming the table names to make it relevant in MySQL Database.
RENAME TABLE `brk-b` TO `brk_b`, `2222.sr` TO `aramco`;

# Displaying a table to see if the data have been added.
SELECT * FROM aapl;		# This is Apple. 
SELECT * FROM amzn;		# This is Amazon. 
SELECT * FROM brk_b;		# This is Berkshire Hathaway Inc. Class B shares.
SELECT * FROM googl;		# This is Google. 
SELECT * FROM msft;		# This is Microsoft. 	
SELECT * FROM TSLA;		# This is Tesla.
SELECT * FROM aramco;		# This is Aramco.
SELECT * FROM meta;		# This is META.
SELECT * FROM nvda;		# This is Nvidia. 	
SELECT * FROM ko;		# This is Coco-Cola.

# Disabling the safe update mode. 
SET SQL_SAFE_UPDATES = 0;

# Changing the company names in merged_stocks table. 
UPDATE merged_stocks
SET company_name = 
	CASE
		WHEN company_name = 'BRK-B' THEN 'Berkshire Hathaway'
        WHEN company_name = '2222.sr' THEN 'Aramco'
        WHEN company_name = 'AAPL' THEN 'Apple'
        WHEN company_name = 'AMZN' THEN 'Amazon'
        WHEN company_name = 'KO' THEN 'Coco-Cola'
        WHEN company_name = 'META' THEN 'META'
        WHEN company_name = 'MSFT' THEN 'Microsoft'
        WHEN company_name = 'TSLA' THEN 'Tesla'
        WHEN company_name = 'GOOGL' THEN 'Google'
        WHEN company_name = 'NVDA' THEN 'Nvidia'
	END
WHERE company_name IN ('BRK-B', '2222.SR', 'AAPL', 'AMZN', 'KO', 'META', 'MSFT', 'TSLA', 'GOOGL', 'NVDA');

# Checking out if the names of the companies have changed.
SELECT company_name FROM merged_stocks
GROUP BY company_name;

# Enabling the SQL Safe Updates. 
SET SQL_SAFE_UPDATES = 1;






--CREATE VIEW CALENDAR
CREATE SCHEMA gold;

CREATE VIEW gold.calendar
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://anshproject.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) as QUERY1 

---CREATE VIEW CUSTOMERS
  
CREATE VIEW gold.customers
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://anshproject.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) as QUERY1 

--CREATE VIEW PRODUCTS

  
CREATE VIEW gold.products
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://anshproject.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) as QUERY1
  
--CREATE VIEW RETURNS
  
CREATE VIEW gold.returns
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://anshproject.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) as QUERY1

--CREATE VIEW SALES

CREATE VIEW gold.sales
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://anshproject.dfs.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) as QUERY1

--CREATE VIEW SUBCATEGORIES
  
CREATE VIEW gold.subcat
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://anshproject.dfs.core.windows.net/silver/Product_Subcategories/',
    FORMAT = 'PARQUET'
) as QUERY1

  --CREATE VIEW TERRITORIES
  
CREATE VIEW gold.territories
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://anshproject.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) as QUERY1

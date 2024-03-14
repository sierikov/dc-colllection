CREATE DATABASE some_db

USE some_db

CREATE TABLE some_table(
    "some_id" varchar(10), 
    "some_date" datetime2, 
    "some_mode" varchar(2), 
    "some_date" datetime2, 
)

BULK INSERT [some_db].[dbo].[some_table] 
FROM '/mydata/data.csv' 
WITH (FIRSTROW = 2,FIELDTERMINATOR = ';', ROWTERMINATOR = '\n')

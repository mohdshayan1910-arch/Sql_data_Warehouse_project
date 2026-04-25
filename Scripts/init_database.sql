/*
========================================================
Create Database And schemas
========================================================
Script Purpose:
	This Script create a new database named'DataWareHouse' After Checking if it already exists.
	If the database exists, it is dropped and recreated.
	This Script  Also Creates Three Schemas within the database: 'bronze', 'silver' and 'gold'.

WARNING!!!!!
	Running this script will the entire database if it exists.
	All data within the database will be permanently deleted. Proceed with caution.
*/

USE master;

--Drop and recreate the database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWareHouse' database
CREATE DATABASE DateWarehouse;
USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO


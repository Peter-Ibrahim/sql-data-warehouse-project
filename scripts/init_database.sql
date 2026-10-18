/*
===========================================
Create Database and Schemas
===========================================
Script Purpose:
	This init_database.sql script creates the database 'DataWarehouse' after checking if it exists.
	If it exists, it is dropped and recreated.
	It also creates the three schemas 'bronze', 'silver' and 'gold' within the database.

WARNING:
	Running this script will drop the database 'DataWarehouse' if it exists.
	All data in the database will be permanently deleted. Proceed with caution
	and ensure you have proper backups before running this script.
*/
USE master;
GO

-- Drop and recreate the 'DataWarehouse' Database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

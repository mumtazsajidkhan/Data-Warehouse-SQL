--Creating Database--

USE master;

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')

BEGIN
	ALTER DATABASE Datawerhouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;

GO

CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO

--Creating Schemas--

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;

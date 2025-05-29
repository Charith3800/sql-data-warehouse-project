/*
=================================================================
Create Database and Schemas
=================================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the databse: 'bronze', 'silver', 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the databse will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/


-- Drop and recreate the 'DataWarehouse' database
if exists (select 1 from sys.databases where name = 'DataWarehouse')
begin
    alter databse DataWarehouse set single_user with rollback immediate;
    drop database DataWarehouse;
end;
go

-- Create Database 'DataWarehouse'

create database DataWarehouse;
go

use DataWarehouse;
go

create schema bronze;
go
create schema silver;
go
create schema gold;

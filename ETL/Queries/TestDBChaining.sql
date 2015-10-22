
/*Create some test logins*/
CREATE LOGIN paga_admin WITH PASSWORD = '()M*^23VJHKDAG';
CREATE LOGIN bi_dev WITH PASSWORD = '/%%"#$#DGS1';

/*Create some test databases*/
CREATE DATABASE production_data;
CREATE DATABASE views_only;

/*Enable cross database chaining */
ALTER DATABASE production_data SET DB_CHAINING ON;
ALTER DATABASE views_only SET DB_CHAINING ON;

/* Make certain that paga_admin is in the db_owner role for both databases*/
ALTER AUTHORIZATION ON DATABASE::production_data To paga_admin;
ALTER AUTHORIZATION ON DATABASE::views_only To paga_admin;
GO

USE production_data;
GO

/*Add a table to production*/
CREATE TABLE t1(a int NOT NULL)
INSERT t1(a) VALUES (99522);
GO

/* Add bi_dev to public role in production_data*/
CREATE USER bi_dev;
GO

USE views_only;
GO

/*Add bi_dev as read only user*/
CREATE USER bi_dev;
ALTER ROLE [db_datareader] ADD MEMBER [bi_dev];
GO

/*Create a view accessing data in production_data*/

CREATE VIEW bi_view AS SELECT a FROM production_data.dbo.t1;

/*Impersonate the bi_dev login so you don't have to reconnect to the server*/
EXECUTE AS LOGIN = 'bi_dev';
go

/*Select from the view you've been granted access to*/
SELECT a FROM bi_view;
go

/*Try to select directly from the production database*/
SELECT a FROM production_data.dbo.t1;

/*Swith user context back to normal login*/
REVERT;
go


USE master;

DROP DATABASE production_data 
DROP DATABASE views_only

DROP LOGIN paga_admin
DROP LOGIN bi_dev
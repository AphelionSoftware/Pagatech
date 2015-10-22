/*Settings for SQL1 (my primary in test) */
/* I am logged in with my sys admin account */


USE [master]
GO

/****** Object:  Simulate MYPAGA/Administrator  (domain user with admin rights) ******/
CREATE LOGIN [CONTOSO\MyPagaAdministrator] 
FROM WINDOWS 
WITH DEFAULT_DATABASE=[master], 
DEFAULT_LANGUAGE=[us_english]
GO

ALTER SERVER ROLE [sysadmin] 
ADD MEMBER [CONTOSO\MyPagaAdministrator]
GO


/****** Simulate BI_SERVER_ADMIN group (christina.leo.aphelion is only group member, domain user with standard rights) ******/
CREATE LOGIN [CONTOSO\BI_SERVER_ADMIN] 
FROM WINDOWS 
WITH DEFAULT_DATABASE=[master], 
DEFAULT_LANGUAGE=[us_english]
GO


/*Ensure MyPagaAdministrator owns paga on Primary */



ALTER AUTHORIZATION ON DATABASE::paga To [CONTOSO\MyPagaAdministrator];

USE paga; --this is an old copy from QA
GO

CREATE ROLE ViewCTData; 
GO 



/*Set up test with one table */

/*Allow access to change tracking*/

GRANT VIEW CHANGE TRACKING ON OBJECT::dbo.Process to ViewCTData;

/* Allow access to primary key so that change tracking functions will work */

GRANT SELECT ON dbo.Process (ProcessID) TO ViewCTData;

/* Test Change Tracking Access */

--First run as sys admin user
SELECT SUSER_NAME(); 
SELECT TOP 10 * FROM dbo.Process; -- should return 10 rows

SELECT 
	change_log.ProcessID
FROM CHANGETABLE(CHANGES dbo.Process,0)  AS change_log --returns 0 rows on my test server, should return 10 on primary


--Now test as BI_SERVER_ADMIN. 'contoso\christina.leo.apheli' does not have an SQL login,
--they are a member of an BI_SERVER_ADMIN AD group having a Windows login to SQL Server.

execute as login = 'contoso\christina.leo.apheli';
SELECT SUSER_NAME();

SELECT TOP 10 * FROM dbo.Process;

/*should return Msg 229, Level 14, State 5, Line 71
The SELECT permission was denied on the object 'Process', database 'paga', schema 'dbo'.*/

SELECT 
	change_log.ProcessID
FROM CHANGETABLE(CHANGES dbo.Process,0)  AS change_log 

/*
We should get an error, because we haven't added BI_SERVER_ADMIN to the ViewCTData Role.

Msg 229, Level 14, State 5, Line 72
The VIEW CHANGE TRACKING permission was denied on the object 'Process', database 'paga', schema 'dbo'.
Msg 229, Level 14, State 5, Line 72
The SELECT permission was denied on the object 'Process', database 'paga', schema 'dbo'.

*/

--revert to sa account
revert
SELECT SUSER_NAME();
--Add BI_SERVER_ADMIN to ViewCTDATA

USE [paga]
GO
ALTER USER [CONTOSO\BI_SERVER_ADMIN] WITH DEFAULT_SCHEMA=NULL
GO
USE [paga]
GO
ALTER ROLE [ViewCTData] ADD MEMBER [CONTOSO\BI_SERVER_ADMIN]
GO

--Retest
execute as login = 'contoso\christina.leo.apheli';
SELECT SUSER_NAME();

SELECT TOP 10 ProcessID, Amount FROM dbo.Process;

/*should return Msg 229, Level 14, State 5, Line 71
Msg 230, Level 14, State 1, Line 104
The SELECT permission was denied on the column 'Amount' of the object 'Process', database 'paga', schema 'dbo'.

This is expected - we only gave rights to the primary key*/


SELECT TOP 10 ProcessID FROM dbo.Process; -- should get 10 rows

SELECT 
	change_log.ProcessID
FROM CHANGETABLE(CHANGES dbo.Process,0)  AS change_log --should get 10 rows

--revert to sa account
revert
SELECT SUSER_NAME();

/*

That verifies that the access we need for change tracking is working correctly. 

Now let's move to the reporting server.

-----------------------------
Change my connection.
-----------------------------
*/


/*Make sure same logins exist on SQL2 as on SQL1 */

/****** Object:  Simulate MYPAGA/Administrator  (domain user with admin rights) ******/
CREATE LOGIN [CONTOSO\MyPagaAdministrator] 
FROM WINDOWS 
WITH DEFAULT_DATABASE=[master], 
DEFAULT_LANGUAGE=[us_english]
GO

ALTER SERVER ROLE [sysadmin] 
ADD MEMBER [CONTOSO\MyPagaAdministrator]
GO


/****** Simulate BI_SERVER_ADMIN group (christina.leo.aphelion is only group member, domain user with standard rights) ******/
CREATE LOGIN [CONTOSO\BI_SERVER_ADMIN] 
FROM WINDOWS 
WITH DEFAULT_DATABASE=[master], 
DEFAULT_LANGUAGE=[us_english]
GO


--Test Paga_Replica Access
--Retest
USE paga;
GO

execute as login = 'contoso\christina.leo.apheli';
SELECT SUSER_NAME();

SELECT TOP 10 ProcessID, Amount FROM dbo.Process;

/*should return Msg 229, Level 14, State 5, Line 71
Msg 230, Level 14, State 1, Line 104
The SELECT permission was denied on the column 'Amount' of the object 'Process', database 'paga', schema 'dbo'.

This is expected - we only gave rights to the primary key*/


SELECT TOP 10 ProcessID FROM dbo.Process; -- should get 10 rows

SELECT 
	change_log.ProcessID
FROM CHANGETABLE(CHANGES dbo.Process,0)  AS change_log --should get change tracking not supported error. IF you get rows, check your connection.

--revert to sa account
revert
SELECT SUSER_NAME();

--Check views

USE paga_bi;
GO

SELECT TOP 10 * FROM paga_bi.dbo.process; --should return data, because I'm using my sys admin rights



/****** Object:  DatabaseRole [BIViewReader]    Script Date: 1/16/2015 11:06:05 AM ******/
CREATE ROLE [BIViewReader]
GO

GRANT SELECT ON dbo.Process TO [BIViewReader]; --again, I just tested one table on my end.

ALTER ROLE [BIViewReader] ADD MEMBER [CONTOSO\BI_SERVER_ADMIN]
GO

--disable db chaining on SQL2 instance, just to see what happens when it is off

EXEC sys.sp_configure N'cross db ownership chaining', N'0'
GO
RECONFIGURE WITH OVERRIDE
GO


--change login
execute as login = 'contoso\christina.leo.apheli';
SELECT SUSER_NAME();

SELECT TOP 10 * FROM paga_bi.dbo.Process; --should get permissions errors


--now enable db chaining on SQL2 instance

revert
SELECT SUSER_NAME();
--enable chaining
EXEC sys.sp_configure N'cross db ownership chaining', N'1'
GO
RECONFIGURE WITH OVERRIDE
GO

--change login and retest
execute as login = 'contoso\christina.leo.apheli';
SELECT SUSER_NAME();

SELECT TOP 10 * FROM paga_bi.dbo.Process; --should get rows this time.
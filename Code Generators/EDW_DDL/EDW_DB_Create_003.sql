/****** Object:  Database Paga_EDW    Script Date: 8/26/2014 3:38:17 PM ******/


USE Master;
GO


IF DB_ID('Paga_EDW') IS NOT NULL
DROP DATABASE Paga_EDW;
GO


CREATE DATABASE Paga_EDW;
GO


ALTER DATABASE Paga_EDW
SET RECOVERY SIMPLE;
GO


USE Paga_EDW;
GO
IF EXISTS (SELECT Name FROM sys.extended_properties WHERE Name = 'Description')
    EXEC sys.sp_dropextendedproperty @name = 'Description'
EXEC sys.sp_addextendedproperty @name = 'Description', @value = 'Default description - you should change this.';
GO

DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimDate */
IF OBJECT_ID('Shared.DimDate') IS NOT NULL
DROP TABLE Shared.DimDate;
GO


/* Create table Shared.DimDate */
CREATE TABLE Shared.DimDate
(
   DimDateID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimDate
ADD CONSTRAINT pk_DimDateID
PRIMARY KEY CLUSTERED
(
   DimDateID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimDate_SourceKey
ON Shared.DimDate
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimDate',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimDate',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimDate',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimDate',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimDate',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimTime */
IF OBJECT_ID('Shared.DimTime') IS NOT NULL
DROP TABLE Shared.DimTime;
GO


/* Create table Shared.DimTime */
CREATE TABLE Shared.DimTime
(
   DimTimeID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimTime
ADD CONSTRAINT pk_DimTimeID
PRIMARY KEY CLUSTERED
(
   DimTimeID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimTime_SourceKey
ON Shared.DimTime
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimTime',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimTime',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimTime',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimTime',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimTime',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimStatusCancellationApprovalStatus */
IF OBJECT_ID('Shared.DimStatusCancellationApprovalStatus') IS NOT NULL
DROP TABLE Shared.DimStatusCancellationApprovalStatus;
GO


/* Create table Shared.DimStatusCancellationApprovalStatus */
CREATE TABLE Shared.DimStatusCancellationApprovalStatus
(
   DimStatusCancellationApprovalStatusID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimStatusCancellationApprovalStatus
ADD CONSTRAINT pk_DimStatusCancellationApprovalStatusID
PRIMARY KEY CLUSTERED
(
   DimStatusCancellationApprovalStatusID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimStatusCancellationApprovalStatus_SourceKey
ON Shared.DimStatusCancellationApprovalStatus
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimStatusCancellationApprovalStatus',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimStatusCancellationApprovalStatus',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimStatusCancellationApprovalStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimStatusCancellationApprovalStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimStatusCancellationApprovalStatus',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimPagaAccountStatus */
IF OBJECT_ID('Shared.DimPagaAccountStatus') IS NOT NULL
DROP TABLE Shared.DimPagaAccountStatus;
GO


/* Create table Shared.DimPagaAccountStatus */
CREATE TABLE Shared.DimPagaAccountStatus
(
   DimPagaAccountStatusID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimPagaAccountStatus
ADD CONSTRAINT pk_DimPagaAccountStatusID
PRIMARY KEY CLUSTERED
(
   DimPagaAccountStatusID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimPagaAccountStatus_SourceKey
ON Shared.DimPagaAccountStatus
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimPagaAccountStatus',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimPagaAccountStatus',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimPagaAccountStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimPagaAccountStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimPagaAccountStatus',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimProcessStatus */
IF OBJECT_ID('Shared.DimProcessStatus') IS NOT NULL
DROP TABLE Shared.DimProcessStatus;
GO


/* Create table Shared.DimProcessStatus */
CREATE TABLE Shared.DimProcessStatus
(
   DimProcessStatusID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimProcessStatus
ADD CONSTRAINT pk_DimProcessStatusID
PRIMARY KEY CLUSTERED
(
   DimProcessStatusID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimProcessStatus_SourceKey
ON Shared.DimProcessStatus
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimProcessStatus',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimProcessStatus',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimProcessStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimProcessStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimProcessStatus',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimProcessType */
IF OBJECT_ID('Shared.DimProcessType') IS NOT NULL
DROP TABLE Shared.DimProcessType;
GO


/* Create table Shared.DimProcessType */
CREATE TABLE Shared.DimProcessType
(
   DimProcessTypeID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   Description VARCHAR(1000) NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimProcessType
ADD CONSTRAINT pk_DimProcessTypeID
PRIMARY KEY CLUSTERED
(
   DimProcessTypeID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimProcessType_SourceKey
ON Shared.DimProcessType
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimProcessType',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimProcessType',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimProcessType',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimProcessType',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimProcessType',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'Description',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimProcessType',
@level2type=N'COLUMN',
@level2name=N'Description';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimFinancialTransactionType */
IF OBJECT_ID('Shared.DimFinancialTransactionType') IS NOT NULL
DROP TABLE Shared.DimFinancialTransactionType;
GO


/* Create table Shared.DimFinancialTransactionType */
CREATE TABLE Shared.DimFinancialTransactionType
(
   DimFinancialTransactionTypeID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   Description VARCHAR(1000) NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimFinancialTransactionType
ADD CONSTRAINT pk_DimFinancialTransactionTypeID
PRIMARY KEY CLUSTERED
(
   DimFinancialTransactionTypeID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimFinancialTransactionType_SourceKey
ON Shared.DimFinancialTransactionType
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialTransactionType',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialTransactionType',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialTransactionType',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialTransactionType',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialTransactionType',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'Description',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialTransactionType',
@level2type=N'COLUMN',
@level2name=N'Description';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimAgentCommissionType */
IF OBJECT_ID('Shared.DimAgentCommissionType') IS NOT NULL
DROP TABLE Shared.DimAgentCommissionType;
GO


/* Create table Shared.DimAgentCommissionType */
CREATE TABLE Shared.DimAgentCommissionType
(
   DimAgentCommissionTypeID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimAgentCommissionType
ADD CONSTRAINT pk_DimAgentCommissionTypeID
PRIMARY KEY CLUSTERED
(
   DimAgentCommissionTypeID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimAgentCommissionType_SourceKey
ON Shared.DimAgentCommissionType
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimAgentCommissionType',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimAgentCommissionType',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimAgentCommissionType',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimAgentCommissionType',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimAgentCommissionType',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimBankAccountLinkStatus */
IF OBJECT_ID('Shared.DimBankAccountLinkStatus') IS NOT NULL
DROP TABLE Shared.DimBankAccountLinkStatus;
GO


/* Create table Shared.DimBankAccountLinkStatus */
CREATE TABLE Shared.DimBankAccountLinkStatus
(
   DimBankAccountLinkStatusID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimBankAccountLinkStatus
ADD CONSTRAINT pk_DimBankAccountLinkStatusID
PRIMARY KEY CLUSTERED
(
   DimBankAccountLinkStatusID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimBankAccountLinkStatus_SourceKey
ON Shared.DimBankAccountLinkStatus
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimBankAccountLinkStatus',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimBankAccountLinkStatus',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimBankAccountLinkStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimBankAccountLinkStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimBankAccountLinkStatus',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimOrganizationSubscriptionStatus */
IF OBJECT_ID('Shared.DimOrganizationSubscriptionStatus') IS NOT NULL
DROP TABLE Shared.DimOrganizationSubscriptionStatus;
GO


/* Create table Shared.DimOrganizationSubscriptionStatus */
CREATE TABLE Shared.DimOrganizationSubscriptionStatus
(
   DimOrganizationSubscriptionStatusID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimOrganizationSubscriptionStatus
ADD CONSTRAINT pk_DimOrganizationSubscriptionStatusID
PRIMARY KEY CLUSTERED
(
   DimOrganizationSubscriptionStatusID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimOrganizationSubscriptionStatus_SourceKey
ON Shared.DimOrganizationSubscriptionStatus
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationSubscriptionStatus',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationSubscriptionStatus',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationSubscriptionStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationSubscriptionStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationSubscriptionStatus',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimOrganizationVerificationStatus */
IF OBJECT_ID('Shared.DimOrganizationVerificationStatus') IS NOT NULL
DROP TABLE Shared.DimOrganizationVerificationStatus;
GO


/* Create table Shared.DimOrganizationVerificationStatus */
CREATE TABLE Shared.DimOrganizationVerificationStatus
(
   DimOrganizationVerificationStatusID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimOrganizationVerificationStatus
ADD CONSTRAINT pk_DimOrganizationVerificationStatusID
PRIMARY KEY CLUSTERED
(
   DimOrganizationVerificationStatusID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimOrganizationVerificationStatus_SourceKey
ON Shared.DimOrganizationVerificationStatus
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationVerificationStatus',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationVerificationStatus',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationVerificationStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationVerificationStatus',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationVerificationStatus',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimCOALevel1 */
IF OBJECT_ID('Shared.DimCOALevel1') IS NOT NULL
DROP TABLE Shared.DimCOALevel1;
GO


/* Create table Shared.DimCOALevel1 */
CREATE TABLE Shared.DimCOALevel1
(
   DimCOALevel1ID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   GLCodeRange VARCHAR(255) NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimCOALevel1
ADD CONSTRAINT pk_DimCOALevel1ID
PRIMARY KEY CLUSTERED
(
   DimCOALevel1ID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimCOALevel1_SourceKey
ON Shared.DimCOALevel1
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel1',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel1',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel1',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel1',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel1',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'GLCodeRange',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel1',
@level2type=N'COLUMN',
@level2name=N'GLCodeRange';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimCOALevel2 */
IF OBJECT_ID('Shared.DimCOALevel2') IS NOT NULL
DROP TABLE Shared.DimCOALevel2;
GO


/* Create table Shared.DimCOALevel2 */
CREATE TABLE Shared.DimCOALevel2
(
   DimCOALevel2ID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   DimCOALevel1ID INT NOT NULL,
   GLCodeRange VARCHAR(255) NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimCOALevel2
ADD CONSTRAINT pk_DimCOALevel2ID
PRIMARY KEY CLUSTERED
(
   DimCOALevel2ID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimCOALevel2_SourceKey
ON Shared.DimCOALevel2
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
ALTER TABLE Shared.DimCOALevel2
ADD CONSTRAINT uc_DimCOALevel2_DimCOALevel1ID
UNIQUE
(
   DimCOALevel1ID
)
GO


--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel2',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel2',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel2',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel2',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel2',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCOALevel1ID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel2',
@level2type=N'COLUMN',
@level2name=N'DimCOALevel1ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'GLCodeRange',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel2',
@level2type=N'COLUMN',
@level2name=N'GLCodeRange';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimCOALevel3 */
IF OBJECT_ID('Shared.DimCOALevel3') IS NOT NULL
DROP TABLE Shared.DimCOALevel3;
GO


/* Create table Shared.DimCOALevel3 */
CREATE TABLE Shared.DimCOALevel3
(
   DimCOALevel3ID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   DimCOALevel2ID INT NOT NULL,
   GLCodeRange VARCHAR(255) NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimCOALevel3
ADD CONSTRAINT pk_DimCOALevel3ID
PRIMARY KEY CLUSTERED
(
   DimCOALevel3ID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimCOALevel3_SourceKey
ON Shared.DimCOALevel3
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
ALTER TABLE Shared.DimCOALevel3
ADD CONSTRAINT uc_DimCOALevel3_DimCOALevel2ID
UNIQUE
(
   DimCOALevel2ID
)
GO


--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel3',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel3',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel3',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel3',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel3',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCOALevel2ID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel3',
@level2type=N'COLUMN',
@level2name=N'DimCOALevel2ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'GLCodeRange',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel3',
@level2type=N'COLUMN',
@level2name=N'GLCodeRange';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimCOALevel4 */
IF OBJECT_ID('Shared.DimCOALevel4') IS NOT NULL
DROP TABLE Shared.DimCOALevel4;
GO


/* Create table Shared.DimCOALevel4 */
CREATE TABLE Shared.DimCOALevel4
(
   DimCOALevel4ID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   DimCOALevel3ID INT NOT NULL,
   GLCode VARCHAR(255) NULL,
   Description VARCHAR(1000) NULL,
   IsNormalDebit BIT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimCOALevel4
ADD CONSTRAINT pk_DimCOALevel4ID
PRIMARY KEY CLUSTERED
(
   DimCOALevel4ID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimCOALevel4_SourceKey
ON Shared.DimCOALevel4
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
ALTER TABLE Shared.DimCOALevel4
ADD CONSTRAINT uc_DimCOALevel4_DimCOALevel3ID
UNIQUE
(
   DimCOALevel3ID
)
GO


--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel4',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel4',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel4',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel4',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel4',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCOALevel3ID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel4',
@level2type=N'COLUMN',
@level2name=N'DimCOALevel3ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'GLCode',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel4',
@level2type=N'COLUMN',
@level2name=N'GLCode';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'Description',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel4',
@level2type=N'COLUMN',
@level2name=N'Description';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'IsNormalDebit',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCOALevel4',
@level2type=N'COLUMN',
@level2name=N'IsNormalDebit';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimFinancialAccount */
IF OBJECT_ID('Shared.DimFinancialAccount') IS NOT NULL
DROP TABLE Shared.DimFinancialAccount;
GO


/* Create table Shared.DimFinancialAccount */
CREATE TABLE Shared.DimFinancialAccount
(
   DimFinancialAccountID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   DimCOALevel4ID INT NOT NULL,
   DimBankAccountID INT NOT NULL,
   DimCurrencyID INT NOT NULL,
   DimFinancialAccountTypeID INT NOT NULL,
   DimAccountHolderID INT NOT NULL,
   DimHoldingFinancialAccountID INT NOT NULL,
   AccountNumber VARCHAR(20) NULL,
   RestrictedBalance DECIMAL(18,2) NULL,
   OpeningBalance DECIMAL(18,2) NULL,
   TotalBalance DECIMAL(18,2) NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimFinancialAccount
ADD CONSTRAINT pk_DimFinancialAccountID
PRIMARY KEY CLUSTERED
(
   DimFinancialAccountID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimFinancialAccount_SourceKey
ON Shared.DimFinancialAccount
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
ALTER TABLE Shared.DimFinancialAccount
ADD CONSTRAINT uc_DimFinancialAccount_DimCOALevel4ID
UNIQUE
(
   DimCOALevel4ID
)
GO


ALTER TABLE Shared.DimFinancialAccount
ADD CONSTRAINT uc_DimFinancialAccount_DimBankAccountID
UNIQUE
(
   DimBankAccountID
)
GO


ALTER TABLE Shared.DimFinancialAccount
ADD CONSTRAINT uc_DimFinancialAccount_DimCurrencyID
UNIQUE
(
   DimCurrencyID
)
GO


ALTER TABLE Shared.DimFinancialAccount
ADD CONSTRAINT uc_DimFinancialAccount_DimFinancialAccountTypeID
UNIQUE
(
   DimFinancialAccountTypeID
)
GO


ALTER TABLE Shared.DimFinancialAccount
ADD CONSTRAINT uc_DimFinancialAccount_DimAccountHolderID
UNIQUE
(
   DimAccountHolderID
)
GO


ALTER TABLE Shared.DimFinancialAccount
ADD CONSTRAINT uc_DimFinancialAccount_DimHoldingFinancialAccountID
UNIQUE
(
   DimHoldingFinancialAccountID
)
GO


--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCOALevel4ID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'DimCOALevel4ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimBankAccountID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'DimBankAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCurrencyID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'DimCurrencyID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimFinancialAccountTypeID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'DimFinancialAccountTypeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimAccountHolderID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'DimAccountHolderID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimHoldingFinancialAccountID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'DimHoldingFinancialAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'AccountNumber',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'AccountNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'RestrictedBalance',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'RestrictedBalance';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'OpeningBalance',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'OpeningBalance';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'TotalBalance',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimFinancialAccount',
@level2type=N'COLUMN',
@level2name=N'TotalBalance';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimChannel */
IF OBJECT_ID('Shared.DimChannel') IS NOT NULL
DROP TABLE Shared.DimChannel;
GO


/* Create table Shared.DimChannel */
CREATE TABLE Shared.DimChannel
(
   DimChannelID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   Description VARCHAR(1000) NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimChannel
ADD CONSTRAINT pk_DimChannelID
PRIMARY KEY CLUSTERED
(
   DimChannelID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimChannel_SourceKey
ON Shared.DimChannel
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimChannel',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimChannel',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimChannel',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimChannel',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimChannel',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'Description',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimChannel',
@level2type=N'COLUMN',
@level2name=N'Description';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimCountry */
IF OBJECT_ID('Shared.DimCountry') IS NOT NULL
DROP TABLE Shared.DimCountry;
GO


/* Create table Shared.DimCountry */
CREATE TABLE Shared.DimCountry
(
   DimCountryID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   Country VARCHAR(255) NULL,
   ISOCode CHAR(3) NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimCountry
ADD CONSTRAINT pk_DimCountryID
PRIMARY KEY CLUSTERED
(
   DimCountryID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimCountry_SourceKey
ON Shared.DimCountry
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCountry',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCountry',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCountry',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCountry',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCountry',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'Country',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCountry',
@level2type=N'COLUMN',
@level2name=N'Country';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'ISOCode',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCountry',
@level2type=N'COLUMN',
@level2name=N'ISOCode';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimGeoZone */
IF OBJECT_ID('Shared.DimGeoZone') IS NOT NULL
DROP TABLE Shared.DimGeoZone;
GO


/* Create table Shared.DimGeoZone */
CREATE TABLE Shared.DimGeoZone
(
   DimGeoZoneID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   DimCountryID INT NOT NULL,
   Symbol VARCHAR(3) NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimGeoZone
ADD CONSTRAINT pk_DimGeoZoneID
PRIMARY KEY CLUSTERED
(
   DimGeoZoneID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimGeoZone_SourceKey
ON Shared.DimGeoZone
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
ALTER TABLE Shared.DimGeoZone
ADD CONSTRAINT uc_DimGeoZone_DimCountryID
UNIQUE
(
   DimCountryID
)
GO


--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGeoZone',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGeoZone',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGeoZone',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGeoZone',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGeoZone',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCountryID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGeoZone',
@level2type=N'COLUMN',
@level2name=N'DimCountryID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'Symbol',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGeoZone',
@level2type=N'COLUMN',
@level2name=N'Symbol';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimRegion */
IF OBJECT_ID('Shared.DimRegion') IS NOT NULL
DROP TABLE Shared.DimRegion;
GO


/* Create table Shared.DimRegion */
CREATE TABLE Shared.DimRegion
(
   DimRegionID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimRegion
ADD CONSTRAINT pk_DimRegionID
PRIMARY KEY CLUSTERED
(
   DimRegionID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimRegion_SourceKey
ON Shared.DimRegion
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimRegion',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimRegion',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimRegion',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimRegion',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimRegion',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimGovernmentLocalArea */
IF OBJECT_ID('Shared.DimGovernmentLocalArea') IS NOT NULL
DROP TABLE Shared.DimGovernmentLocalArea;
GO


/* Create table Shared.DimGovernmentLocalArea */
CREATE TABLE Shared.DimGovernmentLocalArea
(
   DimGovernmentLocalAreaID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimGovernmentLocalArea
ADD CONSTRAINT pk_DimGovernmentLocalAreaID
PRIMARY KEY CLUSTERED
(
   DimGovernmentLocalAreaID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimGovernmentLocalArea_SourceKey
ON Shared.DimGovernmentLocalArea
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGovernmentLocalArea',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGovernmentLocalArea',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGovernmentLocalArea',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGovernmentLocalArea',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimGovernmentLocalArea',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimCity */
IF OBJECT_ID('Shared.DimCity') IS NOT NULL
DROP TABLE Shared.DimCity;
GO


/* Create table Shared.DimCity */
CREATE TABLE Shared.DimCity
(
   DimCityID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimCity
ADD CONSTRAINT pk_DimCityID
PRIMARY KEY CLUSTERED
(
   DimCityID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimCity_SourceKey
ON Shared.DimCity
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCity',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCity',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCity',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCity',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimCity',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimMobileOperator */
IF OBJECT_ID('Shared.DimMobileOperator') IS NOT NULL
DROP TABLE Shared.DimMobileOperator;
GO


/* Create table Shared.DimMobileOperator */
CREATE TABLE Shared.DimMobileOperator
(
   DimMobileOperatorID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   DimOrganizationID INT NOT NULL,
   IsActive BIT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimMobileOperator
ADD CONSTRAINT pk_DimMobileOperatorID
PRIMARY KEY CLUSTERED
(
   DimMobileOperatorID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimMobileOperator_SourceKey
ON Shared.DimMobileOperator
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
ALTER TABLE Shared.DimMobileOperator
ADD CONSTRAINT uc_DimMobileOperator_DimOrganizationID
UNIQUE
(
   DimOrganizationID
)
GO


--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimMobileOperator',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimMobileOperator',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimMobileOperator',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimMobileOperator',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimMobileOperator',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimMobileOperator',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'IsActive',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimMobileOperator',
@level2type=N'COLUMN',
@level2name=N'IsActive';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimOrganization */
IF OBJECT_ID('Shared.DimOrganization') IS NOT NULL
DROP TABLE Shared.DimOrganization;
GO


/* Create table Shared.DimOrganization */
CREATE TABLE Shared.DimOrganization
(
   DimOrganizationID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   Description VARCHAR(1000) NULL,
   DimPagaAccountID INT NOT NULL,
   ReferenceNumber VARCHAR(30) NULL,
   TaxIDNumber VARCHAR(30) NOT NULL,
   VATCertificationNumber VARCHAR(30) NULL,
   DimBusinessTypeID INT NOT NULL,
   RcName VARCHAR(50) NULL,
   WebsiteURL VARCHAR(100) NULL,
   DimOrganizationVerificationStatusID INT NOT NULL,
   DimOrganizationSubscriptionStatusID INT NOT NULL,
   DisplayName VARCHAR(100) NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimOrganization
ADD CONSTRAINT pk_DimOrganizationID
PRIMARY KEY CLUSTERED
(
   DimOrganizationID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimOrganization_SourceKey
ON Shared.DimOrganization
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
ALTER TABLE Shared.DimOrganization
ADD CONSTRAINT uc_DimOrganization_DimPagaAccountID
UNIQUE
(
   DimPagaAccountID
)
GO


ALTER TABLE Shared.DimOrganization
ADD CONSTRAINT uc_DimOrganization_DimBusinessTypeID
UNIQUE
(
   DimBusinessTypeID
)
GO


ALTER TABLE Shared.DimOrganization
ADD CONSTRAINT uc_DimOrganization_DimOrganizationVerificationStatusID
UNIQUE
(
   DimOrganizationVerificationStatusID
)
GO


ALTER TABLE Shared.DimOrganization
ADD CONSTRAINT uc_DimOrganization_DimOrganizationSubscriptionStatusID
UNIQUE
(
   DimOrganizationSubscriptionStatusID
)
GO


--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'Description',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'Description';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimPagaAccountID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'DimPagaAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'ReferenceNumber',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'ReferenceNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'TaxIDNumber',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'TaxIDNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'VATCertificationNumber',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'VATCertificationNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimBusinessTypeID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'DimBusinessTypeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'RcName',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'RcName';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'WebsiteURL',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'WebsiteURL';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'Code',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationVerificationStatusID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationVerificationStatusID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationSubscriptionStatusID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationSubscriptionStatusID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DisplayName',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganization',
@level2type=N'COLUMN',
@level2name=N'DisplayName';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimOrganizationUnitLevel1 */
IF OBJECT_ID('Shared.DimOrganizationUnitLevel1') IS NOT NULL
DROP TABLE Shared.DimOrganizationUnitLevel1;
GO


/* Create table Shared.DimOrganizationUnitLevel1 */
CREATE TABLE Shared.DimOrganizationUnitLevel1
(
   DimOrganizationUnitLevel1ID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   DimOrganizationID INT NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimOrganizationUnitLevel1
ADD CONSTRAINT pk_DimOrganizationUnitLevel1ID
PRIMARY KEY CLUSTERED
(
   DimOrganizationUnitLevel1ID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimOrganizationUnitLevel1_SourceKey
ON Shared.DimOrganizationUnitLevel1
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
ALTER TABLE Shared.DimOrganizationUnitLevel1
ADD CONSTRAINT uc_DimOrganizationUnitLevel1_DimOrganizationID
UNIQUE
(
   DimOrganizationID
)
GO


--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel1',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel1',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel1',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel1',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel1',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel1',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationID';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimOrganizationUnitLevel2 */
IF OBJECT_ID('Shared.DimOrganizationUnitLevel2') IS NOT NULL
DROP TABLE Shared.DimOrganizationUnitLevel2;
GO


/* Create table Shared.DimOrganizationUnitLevel2 */
CREATE TABLE Shared.DimOrganizationUnitLevel2
(
   DimOrganizationUnitLevel2ID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimOrganizationUnitLevel2
ADD CONSTRAINT pk_DimOrganizationUnitLevel2ID
PRIMARY KEY CLUSTERED
(
   DimOrganizationUnitLevel2ID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimOrganizationUnitLevel2_SourceKey
ON Shared.DimOrganizationUnitLevel2
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel2',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel2',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel2',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel2',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel2',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimOrganizationUnitLevel3 */
IF OBJECT_ID('Shared.DimOrganizationUnitLevel3') IS NOT NULL
DROP TABLE Shared.DimOrganizationUnitLevel3;
GO


/* Create table Shared.DimOrganizationUnitLevel3 */
CREATE TABLE Shared.DimOrganizationUnitLevel3
(
   DimOrganizationUnitLevel3ID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimOrganizationUnitLevel3
ADD CONSTRAINT pk_DimOrganizationUnitLevel3ID
PRIMARY KEY CLUSTERED
(
   DimOrganizationUnitLevel3ID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimOrganizationUnitLevel3_SourceKey
ON Shared.DimOrganizationUnitLevel3
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel3',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel3',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel3',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel3',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel3',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimOrganizationUnitLevel4 */
IF OBJECT_ID('Shared.DimOrganizationUnitLevel4') IS NOT NULL
DROP TABLE Shared.DimOrganizationUnitLevel4;
GO


/* Create table Shared.DimOrganizationUnitLevel4 */
CREATE TABLE Shared.DimOrganizationUnitLevel4
(
   DimOrganizationUnitLevel4ID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimOrganizationUnitLevel4
ADD CONSTRAINT pk_DimOrganizationUnitLevel4ID
PRIMARY KEY CLUSTERED
(
   DimOrganizationUnitLevel4ID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimOrganizationUnitLevel4_SourceKey
ON Shared.DimOrganizationUnitLevel4
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel4',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel4',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel4',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel4',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel4',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimOrganizationUnitLevel5 */
IF OBJECT_ID('Shared.DimOrganizationUnitLevel5') IS NOT NULL
DROP TABLE Shared.DimOrganizationUnitLevel5;
GO


/* Create table Shared.DimOrganizationUnitLevel5 */
CREATE TABLE Shared.DimOrganizationUnitLevel5
(
   DimOrganizationUnitLevel5ID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimOrganizationUnitLevel5
ADD CONSTRAINT pk_DimOrganizationUnitLevel5ID
PRIMARY KEY CLUSTERED
(
   DimOrganizationUnitLevel5ID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimOrganizationUnitLevel5_SourceKey
ON Shared.DimOrganizationUnitLevel5
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel5',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel5',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel5',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel5',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimOrganizationUnitLevel5',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimUser */
IF OBJECT_ID('Shared.DimUser') IS NOT NULL
DROP TABLE Shared.DimUser;
GO


/* Create table Shared.DimUser */
CREATE TABLE Shared.DimUser
(
   DimUserID INT NOT NULL,
   SourceKey VARCHAR(255) NOT NULL,
   Name VARCHAR(255) NOT NULL,
   Code VARCHAR(50) NOT NULL,
   DimPagaAccountID INT NOT NULL,
   DimPagaAccountUserTypeID INT NOT NULL,
   DimOrganizationUnitLevel5ID INT NOT NULL,
   FirstName VARCHAR(255) NULL,
   MiddleName VARCHAR(255) NULL,
   LastName VARCHAR(255) NULL,
   Sex CHAR(1) NULL,
   DateOfBirthID INT NOT NULL,
   PhoneNumber VARBINARY(256) NULL,
   Email VARCHAR(100) NULL,
   IsEnabled BIT NULL,
   SourceKeyHash BIGINT NOT NULL,
   DeltaHash BIGINT NOT NULL,
   sysModifiedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysModifiedOn DATETIME NOT NULL DEFAULT GETDATE(),
   sysCreatedBy VARCHAR(255) NOT NULL DEFAULT SYSTEM_USER,
   sysCreatedOn DATETIME NOT NULL DEFAULT GETDATE()
);
GO


ALTER TABLE Shared.DimUser
ADD CONSTRAINT pk_DimUserID
PRIMARY KEY CLUSTERED
(
   DimUserID
);
GO


CREATE UNIQUE NONCLUSTERED INDEX ix_DimUser_SourceKey
ON Shared.DimUser
(
    SourceKey
);
GO


--Add UNIQUE Constraints...
ALTER TABLE Shared.DimUser
ADD CONSTRAINT uc_DimUser_DimPagaAccountID
UNIQUE
(
   DimPagaAccountID
)
GO


ALTER TABLE Shared.DimUser
ADD CONSTRAINT uc_DimUser_DimOrganizationUnitLevel5ID
UNIQUE
(
   DimOrganizationUnitLevel5ID
)
GO


ALTER TABLE Shared.DimUser
ADD CONSTRAINT uc_DimUser_DateOfBirthID
UNIQUE
(
   DateOfBirthID
)
GO


--Add Foreign Keys...
--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'Name';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'2',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'Code';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKey',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'SourceKey';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'BusinessKeyHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'SourceKeyHash';
GO

exec sys.sp_addextendedproperty
@name=N'SCDType',
@value=N'DeltaHash',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'DeltaHash';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimPagaAccountID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'DimPagaAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimPagaAccountUserTypeID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'DimPagaAccountUserTypeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationUnitLevel5ID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationUnitLevel5ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'FirstName',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'FirstName';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'MiddleName',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'MiddleName';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'LastName',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'LastName';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'Sex',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'Sex';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DateOfBirthID',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'DateOfBirthID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'PhoneNumber',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'PhoneNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'Email',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'Email';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'IsEnabled',
@level0type=N'SCHEMA',
@level0name=N'Shared',
@level1type=N'TABLE',
@level1name=N'DimUser',
@level2type=N'COLUMN',
@level2name=N'IsEnabled';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Shared';
IF SCHEMA_ID('Shared')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table DimPagaAccount */
IF OBJECT_ID('Shared.DimPagaAccount') IS NOT NULL
DROP TABLE DimPagaAccount;
GO


/* Create table Shared.DimPagaAccount */
CREATE TABLE Shared.DimPagaAccount
(
   DimPagaAccountID INT NOT NULL,
   RunID INT NOT NULL
);
GO


ALTER TABLE Shared.DimPagaAccount
ADD CONSTRAINT pk_DimPagaAccountID
PRIMARY KEY CLUSTERED
(
   DimPagaAccountID
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
--Table extended properties...

DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Activity';
IF SCHEMA_ID('Activity')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table FactProcessTransaction */
IF OBJECT_ID('Activity.FactProcessTransaction') IS NOT NULL
DROP TABLE FactProcessTransaction;
GO


/* Create table Activity.FactProcessTransaction */
CREATE TABLE Activity.FactProcessTransaction
(
   FactProcessTransactionID INT NOT NULL,
   DimCreatedDateID INT,
   DimCreatedTimeID INT,
   DimPagaAccountID INT,
   DimProcessTypeID INT,
   DimAgentCommissionTypeID INT,
   DimInitiatingUserID INT,
   DimReceivingUserID INT,
   DimOnBehalffUserID INT,
   DimChannelID INT,
   DimOrganizationUnitLevel5ID INT,
   DimStartedDateID INT,
   DimStartedTimeID INT,
   DimCompletedDateID INT,
   DimCompletedTimeID INT,
   DimProcessStatusID INT,
   DimBillerAccountUserID INT,
   DimOrganizationID INT,
   DimOriginalPayerPagaAccountIDID INT,
   DimTransferDateID INT,
   DimTransferTimeID INT,
   DimApprovedByUserID INT,
   DimVerifiedByUserID INT,
   DimCancellationApprovedByUserID INT,
   DimCityID INT,
   OriginalProcessID INT,
   DependentProcessID INT,
   RequestedProcessChannel VARCHAR(255),
   CustomerPhoneNumber VARCHAR(255),
   SenderPhoneNumber VARCHAR(255),
   LinkedPhoneNumber VARCHAR(255),
   ReferenceNumber VARCHAR(255),
   ATMReferenceNumber VARCHAR(255),
   DepositNumber VARCHAR(255),
   MerchantCustomerAccountNumber VARCHAR(255),
   MerchantConfirmationCode VARCHAR(255),
   CardProcessorName VARCHAR(255),
   PaymentSource VARCHAR(255),
   CustomerBillerAccount VARCHAR(255),
   WithdrawalCode VARCHAR(255),
   ProcessFee DECIMAL(18,2),
   ProcessAmount DECIMAL(18,2),
   AgentCommissionAmount DECIMAL(18,2),
   RunID INT NOT NULL
);
GO


ALTER TABLE Activity.FactProcessTransaction
ADD CONSTRAINT pk_FactProcessTransactionID
PRIMARY KEY CLUSTERED
(
   FactProcessTransactionID
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimCreatedDateID
   FOREIGN KEY
   (
       DimCreatedDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimTime') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimCreatedTimeID
   FOREIGN KEY
   (
       DimCreatedTimeID
   )
   REFERENCES
       Shared.DimTime(DimTimeID);
GO


IF OBJECT_ID('Shared.DimPagaAccount') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimPagaAccountID
   FOREIGN KEY
   (
       DimPagaAccountID
   )
   REFERENCES
       Shared.DimPagaAccount(DimPagaAccountID);
GO


IF OBJECT_ID('Shared.DimProcessType') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimProcessTypeID
   FOREIGN KEY
   (
       DimProcessTypeID
   )
   REFERENCES
       Shared.DimProcessType(DimProcessTypeID);
GO


IF OBJECT_ID('Shared.DimAgentCommissionType') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimAgentCommissionTypeID
   FOREIGN KEY
   (
       DimAgentCommissionTypeID
   )
   REFERENCES
       Shared.DimAgentCommissionType(DimAgentCommissionTypeID);
GO


IF OBJECT_ID('Shared.DimUser') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimInitiatingUserID
   FOREIGN KEY
   (
       DimInitiatingUserID
   )
   REFERENCES
       Shared.DimUser(DimUserID);
GO


IF OBJECT_ID('Shared.DimUser') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimReceivingUserID
   FOREIGN KEY
   (
       DimReceivingUserID
   )
   REFERENCES
       Shared.DimUser(DimUserID);
GO


IF OBJECT_ID('Shared.DimUser') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimOnBehalffUserID
   FOREIGN KEY
   (
       DimOnBehalffUserID
   )
   REFERENCES
       Shared.DimUser(DimUserID);
GO


IF OBJECT_ID('Shared.DimChannel') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimChannelID
   FOREIGN KEY
   (
       DimChannelID
   )
   REFERENCES
       Shared.DimChannel(DimChannelID);
GO


IF OBJECT_ID('Shared.DimOrganizationUnitLevel5') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimOrganizationUnitLevel5ID
   FOREIGN KEY
   (
       DimOrganizationUnitLevel5ID
   )
   REFERENCES
       Shared.DimOrganizationUnitLevel5(DimOrganizationUnitLevel5ID);
GO


IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimStartedDateID
   FOREIGN KEY
   (
       DimStartedDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimTime') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimStartedTimeID
   FOREIGN KEY
   (
       DimStartedTimeID
   )
   REFERENCES
       Shared.DimTime(DimTimeID);
GO


IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimCompletedDateID
   FOREIGN KEY
   (
       DimCompletedDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimTime') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimCompletedTimeID
   FOREIGN KEY
   (
       DimCompletedTimeID
   )
   REFERENCES
       Shared.DimTime(DimTimeID);
GO


IF OBJECT_ID('Shared.DimProcessStatus') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimProcessStatusID
   FOREIGN KEY
   (
       DimProcessStatusID
   )
   REFERENCES
       Shared.DimProcessStatus(DimProcessStatusID);
GO


IF OBJECT_ID('Shared.DimUser') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimBillerAccountUserID
   FOREIGN KEY
   (
       DimBillerAccountUserID
   )
   REFERENCES
       Shared.DimUser(DimUserID);
GO


IF OBJECT_ID('Shared.DimOrganization') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimOrganizationID
   FOREIGN KEY
   (
       DimOrganizationID
   )
   REFERENCES
       Shared.DimOrganization(DimOrganizationID);
GO


IF OBJECT_ID('Shared.DimPagaAccount') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimOriginalPayerPagaAccountIDID
   FOREIGN KEY
   (
       DimOriginalPayerPagaAccountIDID
   )
   REFERENCES
       Shared.DimPagaAccount(DimPagaAccountID);
GO


IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimTransferDateID
   FOREIGN KEY
   (
       DimTransferDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimTime') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimTransferTimeID
   FOREIGN KEY
   (
       DimTransferTimeID
   )
   REFERENCES
       Shared.DimTime(DimTimeID);
GO


IF OBJECT_ID('Shared.DimUser') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimApprovedByUserID
   FOREIGN KEY
   (
       DimApprovedByUserID
   )
   REFERENCES
       Shared.DimUser(DimUserID);
GO


IF OBJECT_ID('Shared.DimUser') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimVerifiedByUserID
   FOREIGN KEY
   (
       DimVerifiedByUserID
   )
   REFERENCES
       Shared.DimUser(DimUserID);
GO


IF OBJECT_ID('Shared.DimUser') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimCancellationApprovedByUserID
   FOREIGN KEY
   (
       DimCancellationApprovedByUserID
   )
   REFERENCES
       Shared.DimUser(DimUserID);
GO


IF OBJECT_ID('Shared.DimCity') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DimCityID
   FOREIGN KEY
   (
       DimCityID
   )
   REFERENCES
       Shared.DimCity(DimCityID);
GO


IF OBJECT_ID('Shared.FactProcess') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_OriginalProcessID
   FOREIGN KEY
   (
       OriginalProcessID
   )
   REFERENCES
       Shared.FactProcess(ProcessID);
GO


IF OBJECT_ID('Shared.FactProcess') IS NOT NULL
   ALTER TABLE Activity.FactProcessTransaction
   ADD CONSTRAINT fk_FactProcessTransaction_DependentProcessID
   FOREIGN KEY
   (
       DependentProcessID
   )
   REFERENCES
       Shared.FactProcess(ProcessID);
GO


--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCreatedDateID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimCreatedDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCreatedTimeID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimCreatedTimeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimPagaAccountID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimPagaAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimProcessTypeID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimProcessTypeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimAgentCommissionTypeID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimAgentCommissionTypeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimInitiatingUserID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimInitiatingUserID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimReceivingUserID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimReceivingUserID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOnBehalffUserID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimOnBehalffUserID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimChannelID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimChannelID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationUnitLevel5ID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationUnitLevel5ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimStartedDateID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimStartedDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimStartedTimeID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimStartedTimeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCompletedDateID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimCompletedDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCompletedTimeID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimCompletedTimeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimProcessStatusID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimProcessStatusID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimBillerAccountUserID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimBillerAccountUserID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOriginalPayerPagaAccountIDID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimOriginalPayerPagaAccountIDID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimTransferDateID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimTransferDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimTransferTimeID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimTransferTimeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimApprovedByUserID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimApprovedByUserID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimVerifiedByUserID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimVerifiedByUserID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCancellationApprovedByUserID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimCancellationApprovedByUserID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCityID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DimCityID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'OriginalProcessID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'OriginalProcessID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DependentProcessID',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DependentProcessID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'RequestedProcessChannel',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'RequestedProcessChannel';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'CustomerPhoneNumber',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'CustomerPhoneNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'SenderPhoneNumber',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'SenderPhoneNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'LinkedPhoneNumber',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'LinkedPhoneNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'ReferenceNumber',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'ReferenceNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'ATMReferenceNumber',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'ATMReferenceNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DepositNumber',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'DepositNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'MerchantCustomerAccountNumber',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'MerchantCustomerAccountNumber';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'MerchantConfirmationCode',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'MerchantConfirmationCode';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'CardProcessorName',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'CardProcessorName';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'PaymentSource',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'PaymentSource';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'CustomerBillerAccount',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'CustomerBillerAccount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'WithdrawalCode',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'WithdrawalCode';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'ProcessFee',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'ProcessFee';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'ProcessAmount',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'ProcessAmount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'AgentCommissionAmount',
@level0type=N'SCHEMA',
@level0name=N'Activity',
@level1type=N'TABLE',
@level1name=N'FactProcessTransaction',
@level2type=N'COLUMN',
@level2name=N'AgentCommissionAmount';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Finance';
IF SCHEMA_ID('Finance')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table FactFinancialTransactions */
IF OBJECT_ID('Finance.FactFinancialTransactions') IS NOT NULL
DROP TABLE FactFinancialTransactions;
GO


/* Create table Finance.FactFinancialTransactions */
CREATE TABLE Finance.FactFinancialTransactions
(
   FactFinancialTransactionsID INT NOT NULL,
   DimCreatedDateID INT,
   DimCreatedTimeID INT,
   DimFinancialTransactionTypeID INT,
   DimFinancialAccountID INT,
   DimPagaAccountID INT,
   DimUserID INT,
   DimProcessTypeID INT,
   DimOrganizationUnitLevel5ID INT,
   DimEffectiveDateID INT,
   DimEffectiveTimeID INT,
   DimTransactionDateID INT,
   DimTransactionTimeID INT,
   DimCityID INT,
   DebitAmount DECIMAL(18,2),
   CreditAmount DECIMAL(18,2),
   OriginalTransactionID INT,
   RelatedTransactionID INT,
   RunID INT NOT NULL
);
GO


ALTER TABLE Finance.FactFinancialTransactions
ADD CONSTRAINT pk_FactFinancialTransactionsID
PRIMARY KEY CLUSTERED
(
   FactFinancialTransactionsID
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimCreatedDateID
   FOREIGN KEY
   (
       DimCreatedDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimTime') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimCreatedTimeID
   FOREIGN KEY
   (
       DimCreatedTimeID
   )
   REFERENCES
       Shared.DimTime(DimTimeID);
GO


IF OBJECT_ID('Shared.DimFinancialTransactionType') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimFinancialTransactionTypeID
   FOREIGN KEY
   (
       DimFinancialTransactionTypeID
   )
   REFERENCES
       Shared.DimFinancialTransactionType(DimFinancialTransactionTypeID);
GO


IF OBJECT_ID('Shared.DimFinancialAccount') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimFinancialAccountID
   FOREIGN KEY
   (
       DimFinancialAccountID
   )
   REFERENCES
       Shared.DimFinancialAccount(DimFinancialAccountID);
GO


IF OBJECT_ID('Shared.DimPagaAccount') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimPagaAccountID
   FOREIGN KEY
   (
       DimPagaAccountID
   )
   REFERENCES
       Shared.DimPagaAccount(DimPagaAccountID);
GO


IF OBJECT_ID('Shared.DimUser') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimUserID
   FOREIGN KEY
   (
       DimUserID
   )
   REFERENCES
       Shared.DimUser(DimUserID);
GO


IF OBJECT_ID('Shared.DimProcessType') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimProcessTypeID
   FOREIGN KEY
   (
       DimProcessTypeID
   )
   REFERENCES
       Shared.DimProcessType(DimProcessTypeID);
GO


IF OBJECT_ID('Shared.DimOrganizationUnitLevel5') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimOrganizationUnitLevel5ID
   FOREIGN KEY
   (
       DimOrganizationUnitLevel5ID
   )
   REFERENCES
       Shared.DimOrganizationUnitLevel5(DimOrganizationUnitLevel5ID);
GO


IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimEffectiveDateID
   FOREIGN KEY
   (
       DimEffectiveDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimTime') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimEffectiveTimeID
   FOREIGN KEY
   (
       DimEffectiveTimeID
   )
   REFERENCES
       Shared.DimTime(DimTimeID);
GO


IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimTransactionDateID
   FOREIGN KEY
   (
       DimTransactionDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimTime') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimTransactionTimeID
   FOREIGN KEY
   (
       DimTransactionTimeID
   )
   REFERENCES
       Shared.DimTime(DimTimeID);
GO


IF OBJECT_ID('Shared.DimCity') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_DimCityID
   FOREIGN KEY
   (
       DimCityID
   )
   REFERENCES
       Shared.DimCity(DimCityID);
GO


IF OBJECT_ID('Shared.FactFinancialTransactions') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_OriginalTransactionID
   FOREIGN KEY
   (
       OriginalTransactionID
   )
   REFERENCES
       Shared.FactFinancialTransactions(FinancialTransactionID);
GO


IF OBJECT_ID('Shared.FactFinancialTransactions') IS NOT NULL
   ALTER TABLE Finance.FactFinancialTransactions
   ADD CONSTRAINT fk_FactFinancialTransactions_RelatedTransactionID
   FOREIGN KEY
   (
       RelatedTransactionID
   )
   REFERENCES
       Shared.FactFinancialTransactions(FinancialTransactionID);
GO


--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCreatedDateID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimCreatedDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCreatedTimeID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimCreatedTimeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimFinancialTransactionTypeID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimFinancialTransactionTypeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimFinancialAccountID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimFinancialAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimPagaAccountID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimPagaAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimUserID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimUserID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimProcessTypeID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimProcessTypeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationUnitLevel5ID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationUnitLevel5ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimEffectiveDateID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimEffectiveDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimEffectiveTimeID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimEffectiveTimeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimTransactionDateID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimTransactionDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimTransactionTimeID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimTransactionTimeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCityID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DimCityID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DebitAmount',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'DebitAmount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'RelatedTransactionID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'CreditAmount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'OriginalTransactionID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'OriginalTransactionID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'RelatedTransactionID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactFinancialTransactions',
@level2type=N'COLUMN',
@level2name=N'RelatedTransactionID';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Airtime';
IF SCHEMA_ID('Airtime')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table FactAirtimeStockMovement */
IF OBJECT_ID('Airtime.FactAirtimeStockMovement') IS NOT NULL
DROP TABLE FactAirtimeStockMovement;
GO


/* Create table Airtime.FactAirtimeStockMovement */
CREATE TABLE Airtime.FactAirtimeStockMovement
(
   FactAirtimeStockMovementID INT NOT NULL,
   DimDateID INT,
   DimMobileOperatorID INT,
   DimPagaAccountID INT,
   DimOrganizationUnitLevel5ID INT,
   DimCityID INT,
   MovementAmount DECIMAL(18,2),
   RunID INT NOT NULL
);
GO


ALTER TABLE Airtime.FactAirtimeStockMovement
ADD CONSTRAINT pk_FactAirtimeStockMovementID
PRIMARY KEY CLUSTERED
(
   FactAirtimeStockMovementID
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeStockMovement
   ADD CONSTRAINT fk_FactAirtimeStockMovement_DimDateID
   FOREIGN KEY
   (
       DimDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimMobileOperator') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeStockMovement
   ADD CONSTRAINT fk_FactAirtimeStockMovement_DimMobileOperatorID
   FOREIGN KEY
   (
       DimMobileOperatorID
   )
   REFERENCES
       Shared.DimMobileOperator(DimMobileOperatorID);
GO


IF OBJECT_ID('Shared.DimPagaAccount') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeStockMovement
   ADD CONSTRAINT fk_FactAirtimeStockMovement_DimPagaAccountID
   FOREIGN KEY
   (
       DimPagaAccountID
   )
   REFERENCES
       Shared.DimPagaAccount(DimPagaAccountID);
GO


IF OBJECT_ID('Shared.DimOrganizationUnitLevel5') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeStockMovement
   ADD CONSTRAINT fk_FactAirtimeStockMovement_DimOrganizationUnitLevel5ID
   FOREIGN KEY
   (
       DimOrganizationUnitLevel5ID
   )
   REFERENCES
       Shared.DimOrganizationUnitLevel5(DimOrganizationUnitLevel5ID);
GO


IF OBJECT_ID('Shared.DimCity') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeStockMovement
   ADD CONSTRAINT fk_FactAirtimeStockMovement_DimCityID
   FOREIGN KEY
   (
       DimCityID
   )
   REFERENCES
       Shared.DimCity(DimCityID);
GO


--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimDateID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockMovement',
@level2type=N'COLUMN',
@level2name=N'DimDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimMobileOperatorID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockMovement',
@level2type=N'COLUMN',
@level2name=N'DimMobileOperatorID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimPagaAccountID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockMovement',
@level2type=N'COLUMN',
@level2name=N'DimPagaAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationUnitLevel5ID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockMovement',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationUnitLevel5ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCityID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockMovement',
@level2type=N'COLUMN',
@level2name=N'DimCityID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'MovementAmount',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockMovement',
@level2type=N'COLUMN',
@level2name=N'MovementAmount';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Airtime';
IF SCHEMA_ID('Airtime')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table FactAirtimeStockOnHandSnapshot */
IF OBJECT_ID('Airtime.FactAirtimeStockOnHandSnapshot') IS NOT NULL
DROP TABLE FactAirtimeStockOnHandSnapshot;
GO


/* Create table Airtime.FactAirtimeStockOnHandSnapshot */
CREATE TABLE Airtime.FactAirtimeStockOnHandSnapshot
(
   FactAirtimeStockOnHandSnapshotID INT NOT NULL,
   DimDateID INT,
   DimMobileOperatorID INT,
   DimPagaAccountID INT,
   DimOrganizationUnitLevel5ID INT,
   DimCityID INT,
   AccountBalance DECIMAL(18,2),
   RunID INT NOT NULL
);
GO


ALTER TABLE Airtime.FactAirtimeStockOnHandSnapshot
ADD CONSTRAINT pk_FactAirtimeStockOnHandSnapshotID
PRIMARY KEY CLUSTERED
(
   FactAirtimeStockOnHandSnapshotID
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeStockOnHandSnapshot
   ADD CONSTRAINT fk_FactAirtimeStockOnHandSnapshot_DimDateID
   FOREIGN KEY
   (
       DimDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimMobileOperator') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeStockOnHandSnapshot
   ADD CONSTRAINT fk_FactAirtimeStockOnHandSnapshot_DimMobileOperatorID
   FOREIGN KEY
   (
       DimMobileOperatorID
   )
   REFERENCES
       Shared.DimMobileOperator(DimMobileOperatorID);
GO


IF OBJECT_ID('Shared.DimPagaAccount') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeStockOnHandSnapshot
   ADD CONSTRAINT fk_FactAirtimeStockOnHandSnapshot_DimPagaAccountID
   FOREIGN KEY
   (
       DimPagaAccountID
   )
   REFERENCES
       Shared.DimPagaAccount(DimPagaAccountID);
GO


IF OBJECT_ID('Shared.DimOrganizationUnitLevel5') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeStockOnHandSnapshot
   ADD CONSTRAINT fk_FactAirtimeStockOnHandSnapshot_DimOrganizationUnitLevel5ID
   FOREIGN KEY
   (
       DimOrganizationUnitLevel5ID
   )
   REFERENCES
       Shared.DimOrganizationUnitLevel5(DimOrganizationUnitLevel5ID);
GO


IF OBJECT_ID('Shared.DimCity') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeStockOnHandSnapshot
   ADD CONSTRAINT fk_FactAirtimeStockOnHandSnapshot_DimCityID
   FOREIGN KEY
   (
       DimCityID
   )
   REFERENCES
       Shared.DimCity(DimCityID);
GO


--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimDateID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockOnHandSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimMobileOperatorID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockOnHandSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimMobileOperatorID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimPagaAccountID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockOnHandSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimPagaAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationUnitLevel5ID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockOnHandSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationUnitLevel5ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCityID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockOnHandSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimCityID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'AccountBalance',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeStockOnHandSnapshot',
@level2type=N'COLUMN',
@level2name=N'AccountBalance';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Airtime';
IF SCHEMA_ID('Airtime')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table FactAirtimeTransactions */
IF OBJECT_ID('Airtime.FactAirtimeTransactions') IS NOT NULL
DROP TABLE FactAirtimeTransactions;
GO


/* Create table Airtime.FactAirtimeTransactions */
CREATE TABLE Airtime.FactAirtimeTransactions
(
   FactAirtimeTransactionsID INT NOT NULL,
   DimDateID INT,
   DimTimeID INT,
   DimFinancialTransactionTypeID INT,
   DimFinancialAccountID INT,
   DimPagaAccountID INT,
   DimOrganizationUnitLevel5ID INT,
   DimCityID INT,
   DebitAmount DECIMAL(18,2),
   CreditAmount DECIMAL(18,2),
   RunID INT NOT NULL
);
GO


ALTER TABLE Airtime.FactAirtimeTransactions
ADD CONSTRAINT pk_FactAirtimeTransactionsID
PRIMARY KEY CLUSTERED
(
   FactAirtimeTransactionsID
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeTransactions
   ADD CONSTRAINT fk_FactAirtimeTransactions_DimDateID
   FOREIGN KEY
   (
       DimDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimTime') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeTransactions
   ADD CONSTRAINT fk_FactAirtimeTransactions_DimTimeID
   FOREIGN KEY
   (
       DimTimeID
   )
   REFERENCES
       Shared.DimTime(DimTimeID);
GO


IF OBJECT_ID('Shared.DimFinancialTransactionType') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeTransactions
   ADD CONSTRAINT fk_FactAirtimeTransactions_DimFinancialTransactionTypeID
   FOREIGN KEY
   (
       DimFinancialTransactionTypeID
   )
   REFERENCES
       Shared.DimFinancialTransactionType(DimFinancialTransactionTypeID);
GO


IF OBJECT_ID('Shared.DimFinancialAccount') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeTransactions
   ADD CONSTRAINT fk_FactAirtimeTransactions_DimFinancialAccountID
   FOREIGN KEY
   (
       DimFinancialAccountID
   )
   REFERENCES
       Shared.DimFinancialAccount(DimFinancialAccountID);
GO


IF OBJECT_ID('Shared.DimPagaAccount') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeTransactions
   ADD CONSTRAINT fk_FactAirtimeTransactions_DimPagaAccountID
   FOREIGN KEY
   (
       DimPagaAccountID
   )
   REFERENCES
       Shared.DimPagaAccount(DimPagaAccountID);
GO


IF OBJECT_ID('Shared.DimOrganizationUnitLevel5') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeTransactions
   ADD CONSTRAINT fk_FactAirtimeTransactions_DimOrganizationUnitLevel5ID
   FOREIGN KEY
   (
       DimOrganizationUnitLevel5ID
   )
   REFERENCES
       Shared.DimOrganizationUnitLevel5(DimOrganizationUnitLevel5ID);
GO


IF OBJECT_ID('Shared.DimCity') IS NOT NULL
   ALTER TABLE Airtime.FactAirtimeTransactions
   ADD CONSTRAINT fk_FactAirtimeTransactions_DimCityID
   FOREIGN KEY
   (
       DimCityID
   )
   REFERENCES
       Shared.DimCity(DimCityID);
GO


--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimDateID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeTransactions',
@level2type=N'COLUMN',
@level2name=N'DimDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimTimeID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeTransactions',
@level2type=N'COLUMN',
@level2name=N'DimTimeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimFinancialTransactionTypeID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeTransactions',
@level2type=N'COLUMN',
@level2name=N'DimFinancialTransactionTypeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimFinancialAccountID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeTransactions',
@level2type=N'COLUMN',
@level2name=N'DimFinancialAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimPagaAccountID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeTransactions',
@level2type=N'COLUMN',
@level2name=N'DimPagaAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationUnitLevel5ID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeTransactions',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationUnitLevel5ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCityID',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeTransactions',
@level2type=N'COLUMN',
@level2name=N'DimCityID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DebitAmount',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeTransactions',
@level2type=N'COLUMN',
@level2name=N'DebitAmount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'CreditAmount',
@level0type=N'SCHEMA',
@level0name=N'Airtime',
@level1type=N'TABLE',
@level1name=N'FactAirtimeTransactions',
@level2type=N'COLUMN',
@level2name=N'CreditAmount';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Finance';
IF SCHEMA_ID('Finance')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table FactDailyGLSnapshot */
IF OBJECT_ID('Finance.FactDailyGLSnapshot') IS NOT NULL
DROP TABLE FactDailyGLSnapshot;
GO


/* Create table Finance.FactDailyGLSnapshot */
CREATE TABLE Finance.FactDailyGLSnapshot
(
   FactDailyGLSnapshotID INT NOT NULL,
   DimFinancialTransactionTypeID INT,
   DimFinancialAccountID INT,
   DimOrganizationUnitLevel5ID INT,
   DimAsOfDateID INT,
   DimCityID INT,
   MovementDirection DECIMAL(18,2),
   AggregatedDebitAmount DECIMAL(18,2),
   AggregatedCreditAmount DECIMAL(18,2),
   DebitTransactionCount DECIMAL(18,2),
   CreditTransactionCount DECIMAL(18,2),
   OpeningBalance DECIMAL(18,2),
   ClosingBalance DECIMAL(18,2),
   RunID INT NOT NULL
);
GO


ALTER TABLE Finance.FactDailyGLSnapshot
ADD CONSTRAINT pk_FactDailyGLSnapshotID
PRIMARY KEY CLUSTERED
(
   FactDailyGLSnapshotID
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
IF OBJECT_ID('Shared.DimFinancialTransactionType') IS NOT NULL
   ALTER TABLE Finance.FactDailyGLSnapshot
   ADD CONSTRAINT fk_FactDailyGLSnapshot_DimFinancialTransactionTypeID
   FOREIGN KEY
   (
       DimFinancialTransactionTypeID
   )
   REFERENCES
       Shared.DimFinancialTransactionType(DimFinancialTransactionTypeID);
GO


IF OBJECT_ID('Shared.DimFinancialAccount') IS NOT NULL
   ALTER TABLE Finance.FactDailyGLSnapshot
   ADD CONSTRAINT fk_FactDailyGLSnapshot_DimFinancialAccountID
   FOREIGN KEY
   (
       DimFinancialAccountID
   )
   REFERENCES
       Shared.DimFinancialAccount(DimFinancialAccountID);
GO


IF OBJECT_ID('Shared.DimOrganizationUnitLevel5') IS NOT NULL
   ALTER TABLE Finance.FactDailyGLSnapshot
   ADD CONSTRAINT fk_FactDailyGLSnapshot_DimOrganizationUnitLevel5ID
   FOREIGN KEY
   (
       DimOrganizationUnitLevel5ID
   )
   REFERENCES
       Shared.DimOrganizationUnitLevel5(DimOrganizationUnitLevel5ID);
GO


IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Finance.FactDailyGLSnapshot
   ADD CONSTRAINT fk_FactDailyGLSnapshot_DimAsOfDateID
   FOREIGN KEY
   (
       DimAsOfDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimCity') IS NOT NULL
   ALTER TABLE Finance.FactDailyGLSnapshot
   ADD CONSTRAINT fk_FactDailyGLSnapshot_DimCityID
   FOREIGN KEY
   (
       DimCityID
   )
   REFERENCES
       Shared.DimCity(DimCityID);
GO


--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimFinancialTransactionTypeID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimFinancialTransactionTypeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimFinancialAccountID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimFinancialAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationUnitLevel5ID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationUnitLevel5ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimAsOfDateID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimAsOfDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCityID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimCityID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'MovementDirection',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'MovementDirection';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'AggregatedDebitAmount',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'AggregatedDebitAmount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'AggregatedCreditAmount',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'AggregatedCreditAmount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DebitTransactionCount',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DebitTransactionCount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'CreditTransactionCount',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'CreditTransactionCount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'OpeningBalance',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'OpeningBalance';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'ClosingBalance',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactDailyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'ClosingBalance';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Finance';
IF SCHEMA_ID('Finance')IS NULL
EXEC sp_executesql @sql;
GO


/* Drop table FactMonthlyGLSnapshot */
IF OBJECT_ID('Finance.FactMonthlyGLSnapshot') IS NOT NULL
DROP TABLE FactMonthlyGLSnapshot;
GO


/* Create table Finance.FactMonthlyGLSnapshot */
CREATE TABLE Finance.FactMonthlyGLSnapshot
(
   FactMonthlyGLSnapshotID INT NOT NULL,
   DimFinancialTransactionTypeID INT,
   DimFinancialAccountID INT,
   DimOrganizationUnitLevel5ID INT,
   DimAsOfDateID INT,
   DimCityID INT,
   MovementDirection DECIMAL(18,2),
   AggregatedDebitAmount DECIMAL(18,2),
   AggregatedCreditAmount DECIMAL(18,2),
   DebitTransactionCount DECIMAL(18,2),
   CreditTransactionCount DECIMAL(18,2),
   OpeningBalance DECIMAL(18,2),
   ClosingBalance DECIMAL(18,2),
   RunID INT NOT NULL
);
GO


ALTER TABLE Finance.FactMonthlyGLSnapshot
ADD CONSTRAINT pk_FactMonthlyGLSnapshotID
PRIMARY KEY CLUSTERED
(
   FactMonthlyGLSnapshotID
);
GO


--Add UNIQUE Constraints...
--Add Foreign Keys...
IF OBJECT_ID('Shared.DimFinancialTransactionType') IS NOT NULL
   ALTER TABLE Finance.FactMonthlyGLSnapshot
   ADD CONSTRAINT fk_FactMonthlyGLSnapshot_DimFinancialTransactionTypeID
   FOREIGN KEY
   (
       DimFinancialTransactionTypeID
   )
   REFERENCES
       Shared.DimFinancialTransactionType(DimFinancialTransactionTypeID);
GO


IF OBJECT_ID('Shared.DimFinancialAccount') IS NOT NULL
   ALTER TABLE Finance.FactMonthlyGLSnapshot
   ADD CONSTRAINT fk_FactMonthlyGLSnapshot_DimFinancialAccountID
   FOREIGN KEY
   (
       DimFinancialAccountID
   )
   REFERENCES
       Shared.DimFinancialAccount(DimFinancialAccountID);
GO


IF OBJECT_ID('Shared.DimOrganizationUnitLevel5') IS NOT NULL
   ALTER TABLE Finance.FactMonthlyGLSnapshot
   ADD CONSTRAINT fk_FactMonthlyGLSnapshot_DimOrganizationUnitLevel5ID
   FOREIGN KEY
   (
       DimOrganizationUnitLevel5ID
   )
   REFERENCES
       Shared.DimOrganizationUnitLevel5(DimOrganizationUnitLevel5ID);
GO


IF OBJECT_ID('Shared.DimDate') IS NOT NULL
   ALTER TABLE Finance.FactMonthlyGLSnapshot
   ADD CONSTRAINT fk_FactMonthlyGLSnapshot_DimAsOfDateID
   FOREIGN KEY
   (
       DimAsOfDateID
   )
   REFERENCES
       Shared.DimDate(DimDateID);
GO


IF OBJECT_ID('Shared.DimCity') IS NOT NULL
   ALTER TABLE Finance.FactMonthlyGLSnapshot
   ADD CONSTRAINT fk_FactMonthlyGLSnapshot_DimCityID
   FOREIGN KEY
   (
       DimCityID
   )
   REFERENCES
       Shared.DimCity(DimCityID);
GO


--Table extended properties...
exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimFinancialTransactionTypeID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimFinancialTransactionTypeID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimFinancialAccountID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimFinancialAccountID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimOrganizationUnitLevel5ID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimOrganizationUnitLevel5ID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimAsOfDateID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimAsOfDateID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DimCityID',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DimCityID';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'MovementDirection',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'MovementDirection';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'AggregatedDebitAmount',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'AggregatedDebitAmount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'AggregatedCreditAmount',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'AggregatedCreditAmount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'DebitTransactionCount',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'DebitTransactionCount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'CreditTransactionCount',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'CreditTransactionCount';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'OpeningBalance',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'OpeningBalance';
GO

exec sys.sp_addextendedproperty
@name=N'DisplayName',
@value=N'ClosingBalance',
@level0type=N'SCHEMA',
@level0name=N'Finance',
@level1type=N'TABLE',
@level1name=N'FactMonthlyGLSnapshot',
@level2type=N'COLUMN',
@level2name=N'ClosingBalance';
GO


DECLARE @sql AS NVARCHAR(200) = N'CREATE SCHEMA Activity';
IF SCHEMA_ID('Activity')IS NULL
EXEC sp_executesql @sql;
GO




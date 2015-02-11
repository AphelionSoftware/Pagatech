﻿CREATE TABLE [Finance].[DimBank] (
    [DimBankID]           INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]           INT           NOT NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [BankAccountLinkType] VARCHAR (255) NOT NULL,
    [DimOrganizationID]   INT           NOT NULL,
    [SupportsDebit]       BIT           NULL,
    [SupportsCredit]      BIT           NULL,
    [sys_ModifiedBy]      VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]      DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]            BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_DimBankID] PRIMARY KEY CLUSTERED ([DimBankID] ASC),
    CONSTRAINT [fk_DimBank_DimOrganizationID] FOREIGN KEY ([DimOrganizationID]) REFERENCES [Shared].[DimOrganization] ([DimOrganizationID])
);










GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimBank_SourceKey]
    ON [Finance].[DimBank]([SourceKey] ASC);


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.Bank', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'3', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2200', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'BankId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	ct.SYS_CHANGE_OPERATION, SYS_CHANGE_VERSION = ct.as_of_change_version, SourceKey , 	base_query.name, 	base_query.DimOrganizationSourceKey, 	base_query.BankAccountLinkType FROM  ( 	SELECT            [BankAccountLinkType] = COALESCE([BankAccountLinkTypeId],''UNKNOWN''),            [Name]= CONVERT(Varchar(50),[BankName]),            [SourceKey]=[BankId],            [DimOrganizationSourceKey]=[OrganizationId]     FROM [dbo].[Bank]     ) as base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank';






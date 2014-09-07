﻿CREATE TABLE [Finance].[DimBank] (
    [DimBankID]           INT           NOT NULL,
    [SourceKey]           VARCHAR (255) NOT NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [BankAccountLinkType] VARCHAR (255) NOT NULL,
    [DimOrganizationID]   INT           NOT NULL,
    [SupportsDebit]       BIT           NULL,
    [SupportsCredit]      BIT           NULL,
    [SourceKeyHash]       BIGINT        NOT NULL,
    [DeltaHash]           BIGINT        NOT NULL,
    [sys_ModifiedBy]      VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]      DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimBankID] PRIMARY KEY CLUSTERED ([DimBankID] ASC),
    CONSTRAINT [fk_DimBank_DimOrganizationID] FOREIGN KEY ([DimOrganizationID]) REFERENCES [Shared].[DimOrganization] ([DimOrganizationID])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimBank_SourceKey]
    ON [Finance].[DimBank]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank', @level2type = N'COLUMN', @level2name = N'Name';


GO



GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankAccountLinkType', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank', @level2type = N'COLUMN', @level2name = N'BankAccountLinkType';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'SupportsDebit', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank', @level2type = N'COLUMN', @level2name = N'SupportsDebit';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'SupportsCredit', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank', @level2type = N'COLUMN', @level2name = N'SupportsCredit';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.Bank', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'BankId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.name,
	base_query.DimOrganizationSourceKey,
	base_query.BankAccountLinkType,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
FROM 
(
	SELECT
           [BankAccountLinkType] = COALESCE([BankAccountLinkTypeId],''UNKNOWN''),
           [Name]= CONVERT(Varchar(50),[BankName]),
           [SourceKey]=[BankId],
           [DimOrganizationSourceKey]=[OrganizationId]
    FROM [dbo].[Bank]    
) as base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBank';


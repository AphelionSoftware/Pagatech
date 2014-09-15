﻿CREATE TABLE [Classification].[DimFinancialTxSubType] (
    [DimFinancialTxSubTypeID] INT           NOT NULL,
    [SourceKey]                        VARCHAR (255) NOT NULL,
    [Name]                             VARCHAR (255) NOT NULL,
    [SourceKeyHash]                    BIGINT        NOT NULL,
    [DeltaHash]                        BIGINT        NOT NULL,
    [sys_ModifiedBy]                   VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]                   DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                    VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                    DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialTxSubTypeID] PRIMARY KEY CLUSTERED ([DimFinancialTxSubTypeID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialTxSubType_SourceKey]
    ON [Classification].[DimFinancialTxSubType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
			SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
			base_query.name,
			change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
		FROM 
		

	(SELECT
	FinancialTxSubTypeID AS SourceKey, 
	 CONVERT(VARCHAR(255),Description) AS Name
FROM dbo.FinancialTxSubType) as base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxSubType';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialTxSubTypeID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxSubType';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxSubType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialTxSubType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxSubType';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxSubType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxSubType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxSubType', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxSubType', @level2type = N'COLUMN', @level2name = N'DeltaHash';


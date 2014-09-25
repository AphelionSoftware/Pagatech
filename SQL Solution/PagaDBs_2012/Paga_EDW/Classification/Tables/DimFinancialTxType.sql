CREATE TABLE [Classification].[DimFinancialTxType] (
    [DimFinancialTxTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [FinancialTxCategory]  VARCHAR (255) NOT NULL,
    [SourceKeyHash]        BIGINT        NULL,
    [DeltaHash]            BIGINT        NULL,
    [sys_ModifiedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialTxTypeID] PRIMARY KEY CLUSTERED ([DimFinancialTxTypeID] ASC)
);








GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialTxType_SourceKey]
    ON [Classification].[DimFinancialTxType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I''),
	base_query.name,
	base_query.FinancialTxCategory
	
FROM 
(
	SELECT
		FinancialTransactionTypeID AS SourceKey, 
		CONVERT(VARCHAR(255),Description) AS Name,
		CONVERT(VARCHAR(255),COALESCE(FinancialTransactionTypeGroupId,''UNKNOWN'')) AS FinancialTxCategory
	FROM dbo.FinancialTransactionType AS ftt
	OUTER APPLY
	(
		SELECT TOP 1 
			x.FinancialTransactionTypeGroupId
		FROM [dbo].[FinancialTransactionTypeTransactionTypeGroup] as x
		WHERE 
			x.FinancialTransactionTypeId = ftt.FinancialTransactionTypeId
		ORDER BY 
			x.UpdatedDate DESC
	) AS ftg
) as base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxType';






GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxType';




GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxType';




GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTxType';


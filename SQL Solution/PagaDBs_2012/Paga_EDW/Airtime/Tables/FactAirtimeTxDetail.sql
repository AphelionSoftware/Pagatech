﻿CREATE TABLE [Airtime].[FactAirtimeTxDetail] (
    [FactAirtimeTxDetailID] INT     IDENTITY(1,1)        NOT NULL,
    [SourceKey]             INT             NOT NULL,
    [FactAirtimeTxHeaderID] INT             NOT NULL,
    [DimCreatedDateID]      INT             NOT NULL,
    [DimCreatedTimeID]      INT             NOT NULL,
    [DimFinancialAccountID] INT             NULL,
    [DimPagaAccountID]      INT             NULL,
    [TextDescription]       VARCHAR (200)   NOT NULL,
    [DebitAmount]           DECIMAL (18, 2) NULL,
    [CreditAmount]          DECIMAL (18, 2) NULL,
    [MovementAmount]        AS              ([CreditAmount]-[DebitAmount]),
    CONSTRAINT [pk_FactAirtimeTxDetailID] PRIMARY KEY CLUSTERED ([FactAirtimeTxDetailID] ASC),
    CONSTRAINT [fk_FactAirtimeTxDetail_DimCreatedDateID] FOREIGN KEY ([DimCreatedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactAirtimeTxDetail_DimCreatedTimeID] FOREIGN KEY ([DimCreatedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactAirtimeTxDetail_DimFinancialAccountID] FOREIGN KEY ([DimFinancialAccountID]) REFERENCES [Finance].[DimFinancialAccount] ([DimFinancialAccountID]),
    CONSTRAINT [fk_FactAirtimeTxDetail_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID]),
    CONSTRAINT [fk_FactAirtimeTxDetail_FactAirtimeTxHeaderID] FOREIGN KEY ([FactAirtimeTxHeaderID]) REFERENCES [Airtime].[FactAirtimeTxHeader] ([FactAirtimeTxHeaderID])
);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialTransactionItem', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTxDetail';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialTransactionItemID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTxDetail';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'
SELECT	
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I''),
	base_query.DimCreatedDateID,
	base_query.DimCreatedTimeID,
	base_query.DimFinancialAccountSourceKey,
	base_query.DimPagaAccountSourceKey,
	base_query.FactAirtimeTxHeaderSourceKey,
	base_query.TextDescription,
	base_query.CreditAmount,
	base_query.DebitAmount
FROM
(
	SELECT
		SourceKey = fti.FinancialTransactionItemId, 
		DimCreatedDateID = CONVERT(INT,CONVERT(VARCHAR(8),fti.CreatedDate,112)), 
		DimCreatedTimeID = CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), fti.CreatedDate, 114),'':'','''')), 
		DimFinancialAccountSourceKey = fti.FinancialAccountId, 
		DimPagaAccountSourceKey = paga_acct.PagaAccountId, 
		FactAirtimeTxHeaderSourceKey = fti.FinancialTransactionId,
		TextDescription = CONVERT(VARCHAR(200),fti.[Description]), 
		fti.CreditAmount, 
		fti.DebitAmount
	FROM  [dbo].[FinancialTransactionItem] AS fti
	LEFT JOIN 
	(
		SELECT 
			pa.PagaAccountId,
			fa.FinancialAccountId
		FROM dbo.pagaAccount AS pa 
		INNER JOIN dbo.FinancialAccount as fa ON
			pa.AccountHolderId = fa.AccountHolderId 
	) AS paga_acct ON
		paga_acct.FinancialAccountId = fti.FinancialAccountId
	WHERE
		EXISTS
		(
			SELECT
				1
			FROM dbo.FinancialTransaction AS ft0
			WHERE
				fti.FinancialTransactionId = ft0.FinancialTransactionId
		)
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTxDetail';


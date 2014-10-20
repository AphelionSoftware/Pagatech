CREATE TABLE [Finance].[FactFinancialTxHeader] (
    [FactFinancialTxHeaderID]          INT             IDENTITY (1, 1) NOT NULL,
    [SourceKey]                        INT             NOT NULL,
    [DimCreatedDateID]                 INT             NOT NULL,
    [DimCreatedTimeID]                 INT             NOT NULL,
    [DimTransactionDateID]             INT             NOT NULL,
    [DimTransactionTimeID]             INT             NOT NULL,
    [DimEffectiveDateID]               INT             NOT NULL,
    [DimEffectiveTimeID]               INT             NOT NULL,
    [DimFinancialTxTypeID]             INT             NOT NULL,
    [DimFinancialTxSubTypeID]          INT             NULL,
    [FactProcessTxID]                  INT             NOT NULL,
    [DimUserID]                        INT             NULL,
    [DimOrganizationUnitLevel4ID]      INT             NULL,
    [OriginalFactFinancialTxHeaderID]  INT             NULL,
    [RelatedFactFinancialTxHeaderID]   INT             NULL,
    [DimCurrencyID]                    INT             NULL,
    [TextDescription]                  VARCHAR (100)   NOT NULL,
    [ExternalReferenceNumber]          VARCHAR (100)   NULL,
    [ReferenceNumber]                  VARCHAR (50)    NULL,
    [ShortCode]                        VARCHAR (10)    NOT NULL,
    [Fee]                              DECIMAL (18, 2) NULL,
    [Amount]                           DECIMAL (18, 2) NULL,
    [ExchangeRate]                     DECIMAL (16, 4) NULL,
    [ForeignCurrencyAmount]            DECIMAL (18, 2) NULL,
    [Void]                             BIT             NULL,
    [CancelledFactFinancialTxHeaderID] INT             NULL,
    CONSTRAINT [pk_FactFinancialTxHeaderID] PRIMARY KEY CLUSTERED ([FactFinancialTxHeaderID] ASC),
    CONSTRAINT [fk_FactFinancialTxHeader_DimCreatedDateID] FOREIGN KEY ([DimCreatedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimCreatedTimeID] FOREIGN KEY ([DimCreatedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [Finance].[DimCurrency] ([DimCurrencyID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimEffectiveDateID] FOREIGN KEY ([DimEffectiveDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimEffectiveTimeID] FOREIGN KEY ([DimEffectiveTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimFinancialTxSubTypeID] FOREIGN KEY ([DimFinancialTxSubTypeID]) REFERENCES [Classification].[DimFinancialTxSubType] ([DimFinancialTxSubTypeID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimFinancialTxTypeID] FOREIGN KEY ([DimFinancialTxTypeID]) REFERENCES [Classification].[DimFinancialTxType] ([DimFinancialTxTypeID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimOrganizationUnitLevel4ID] FOREIGN KEY ([DimOrganizationUnitLevel4ID]) REFERENCES [Shared].[DimOrganizationUnitLevel4] ([DimOrganizationUnitLevel4ID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimTransactionDateID] FOREIGN KEY ([DimTransactionDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimTransactionTimeID] FOREIGN KEY ([DimTransactionTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTxHeader_FactProcessTxID] FOREIGN KEY ([FactProcessTxID]) REFERENCES [Activity].[FactProcessTx] ([FactProcessTxID]),
    CONSTRAINT [fk_FactFinancialTxHeader_OriginalTransactionID] FOREIGN KEY ([OriginalFactFinancialTxHeaderID]) REFERENCES [Finance].[FactFinancialTxHeader] ([FactFinancialTxHeaderID]),
    CONSTRAINT [fk_FactFinancialTxHeader_RelatedTransactionID] FOREIGN KEY ([RelatedFactFinancialTxHeaderID]) REFERENCES [Finance].[FactFinancialTxHeader] ([FactFinancialTxHeaderID])
);




















GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'DECLARE @reversals AS TABLE
(
	TxID  INT,
	EffDate  DATETIME,
	OrigTxID  INT,
	RelatedTxID  INT
);
WITH reversals AS
(

	SELECT
		ft1.FinancialTransactionId,
		ft1.TransactionDate AS EffDate,
		ft1.FinancialTransactionId AS OrigTxID,
		ft1.__Reverses AS RelatedTxID
	FROM dbo.FinancialTransaction AS ft1
	WHERE
		ft1.Reverses IS NULL
	UNION ALL
	SELECT
		ft2.FinancialTransactionId,
		R.EffDate,
		R.OrigTxID,
		ft2.__Reverses AS RelatedTxID
	FROM dbo.FinancialTransaction AS ft2
	INNER JOIN reversals AS r
		ON ft2.Reverses = R.FinancialTransactionId
)
INSERT INTO @reversals
(
	TxID,
	EffDate,
	OrigTxID,
	RelatedTxID
)
SELECT
	reversals.financialTransactionId,
	reversals.EffDate,
	reversals.OrigTxID,
	reversals.relatedTxID
FROM reversals;
SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I''),
	DimCreatedDateID, 
	DimCreatedTimeID, 
	DimEffectiveDateID, 
	DimEffectiveTimeID, 
	DimTransactionDateID,
	DimTransactionTimeID, 
	DimFinancialTxTypeSourceKey, 
	DimFinancialTxSubTypeSourceKey, 
	DimOrganizationUnitLevel4SourceKey, 
	DimUserSourceKey, 
	FactProcessTxSourceKey, 
	RelatedFactAirtimeTxHeaderSourceKey, 
	OriginalFactAirtimeTxHeaderSourceKey, 
	DimCurrencySourceKey, 
	TextDescription, 
	Amount, 
	ExchangeRate, 
	ExternalReferenceNumber,
	Fee, 
	ForeignCurrencyAmount, 
	ReferenceNumber, 
	ShortCode
FROM
(
	SELECT
		SourceKey = ft.FinancialTransactionId, 
		DimCreatedDateID = CONVERT(INT,CONVERT(VARCHAR(8),CreatedDate,112)), 
		DimCreatedTimeID = CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), CreatedDate, 114),'':'','''')), 
		DimEffectiveDateID = CONVERT(INT,CONVERT(VARCHAR(8),r2.EffDate,112)), 
		DimEffectiveTimeID = CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), r2.EffDate, 114),'':'','''')), 
		DimTransactionDateID = CONVERT(INT,CONVERT(VARCHAR(8),ft.TransactionDate,112)),
		DimTransactionTimeID = CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), ft.TransactionDate, 114),'':'','''')), 
		DimFinancialTxTypeSourceKey = FinancialTransactionTypeId, 
		DimFinancialTxSubTypeSourceKey = FinancialTransactionSubTypeId, 
		DimOrganizationUnitLevel4SourceKey = orgUnit.OrganizationUnitId, 
		DimUserSourceKey = UserId, 
		FactProcessTxSourceKey = COALESCE(ProcessId, -1), 
		RelatedFactAirtimeTxHeaderSourceKey = r2.relatedTxID, 
		OriginalFactAirtimeTxHeaderSourceKey = r2.OrigTxID, 
		DimCurrencySourceKey = CurrencyId, 
		TextDescription = CONVERT(VARCHAR(100),[Description]), 
		Amount, 
		ExchangeRate, 
		ExternalReferenceNumber,
		Fee, 
		ForeignCurrencyAmount, 
		ReferenceNumber, 
		ShortCode
	FROM dbo.financialTransaction AS ft
	CROSS APPLY 
	(
		SELECT 
			r1.OrigTxID,
			COALESCE(r1.RelatedTxID,r1.OrigTxID) AS RelatedTxID,
			r1.EffDate
		FROM @reversals AS R1
		WHERE 
			R1.TxID = ft.FinancialTransactionId
	) AS R2
	OUTER APPLY
	(
		SELECT
			OrganizationUnitId
		FROM [dbo].[OrganizationUnitUser] As ouu
		WHERE
			ouu.UserId = ft.UserId
	) AS orgUnit
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader';








GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialTransactionID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader';




GO



GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialTransaction', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader';




GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeID';


GO




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTransactionDateID';


GO

EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTransactionTimeID';
GO

EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OriginalTransactionID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'OriginalFactFinancialTxHeaderID';
GO

EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RelatedTransactionID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'RelatedFactFinancialTxHeaderID';
GO

EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';
GO

EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';
GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'9', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2700', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader';


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactFinancialTxHeader_SourceKey]
    ON [Finance].[FactFinancialTxHeader]([SourceKey] ASC, [FactFinancialTxHeaderID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactFinancialTxHeader_RelatedFactFinancialTxHeaderID]
    ON [Finance].[FactFinancialTxHeader]([RelatedFactFinancialTxHeaderID] ASC);


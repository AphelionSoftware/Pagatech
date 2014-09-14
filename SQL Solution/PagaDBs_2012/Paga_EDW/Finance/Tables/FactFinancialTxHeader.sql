CREATE TABLE [Finance].[FactFinancialTxHeader] (
    [FactFinancialTxHeaderID]         INT             NOT NULL,
    [SourceKey]                          INT             NOT NULL,
    [DimCreatedDateID]                   INT             NOT NULL,
    [DimCreatedTimeID]                   INT             NOT NULL,
    [DimTransactionDateID]               INT             NOT NULL,
    [DimTransactionTimeID]               INT             NOT NULL,
    [DimEffectiveDateID]                 INT             NOT NULL,
    [DimEffectiveTimeID]                 INT             NOT NULL,
	[DimFinancialTransactionTypeID]      INT             NOT NULL,
	[DimFinancialTransactionSubTypeID]   INT             NULL,
	[FactProcessTxID]			INT				NOT NULL,
	[DimUserID]                          INT             NULL,
  	[DimOrganizationUnitLevel4ID]		INT				NULL,
    [OriginalFactFinancialTxHeaderID] INT             NULL,
    [RelatedFactFinancialTxHeaderID]  INT             NULL,
	[DimCurrencyID]						INT				NULL,
	[TextDescription]					VARCHAR(100)	NOT NULL,
	[ExternalReferenceNumber]			VARCHAR(100)	NULL,
	[ReferenceNumber]					VARCHAR(50)	NULL,
	[ShortCode]							VARCHAR(10) NOT NULL,
	[Fee]								DECIMAL (18, 2) NULL,
    [Amount]							DECIMAL (18, 2) NULL,
	[ExchangeRate]						DECIMAL (16, 4) NULL,
    [ForeignCurrencyAmount]             DECIMAL (18, 2) NULL

    CONSTRAINT [pk_FactFinancialTxHeaderID] PRIMARY KEY CLUSTERED ([FactFinancialTxHeaderID] ASC),

    CONSTRAINT [fk_FactFinancialTxHeader_DimCreatedDateID] FOREIGN KEY ([DimCreatedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimCreatedTimeID] FOREIGN KEY ([DimCreatedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimEffectiveDateID] FOREIGN KEY ([DimEffectiveDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimEffectiveTimeID] FOREIGN KEY ([DimEffectiveTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimTransactionDateID] FOREIGN KEY ([DimTransactionDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimTransactionTimeID] FOREIGN KEY ([DimTransactionTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    
	CONSTRAINT [fk_FactFinancialTxHeader_DimFinancialTransactionTypeID] FOREIGN KEY ([DimFinancialTransactionTypeID]) REFERENCES [Classification].[DimFinancialTransactionType] ([DimFinancialTransactionTypeID]),
	CONSTRAINT [fk_FactFinancialTxHeader_DimFinancialTransactionSubTypeID] FOREIGN KEY ([DimFinancialTransactionSubTypeID]) REFERENCES [Classification].[DimFinancialTransactionSubType] ([DimFinancialTransactionSubTypeID]),
    CONSTRAINT [fk_FactFinancialTxHeader_FactProcessTxID] FOREIGN KEY ([FactProcessTxID]) REFERENCES [Activity].[FactProcessTx](FactProcessTxID),

	CONSTRAINT [fk_FactFinancialTxHeader_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTxHeader_DimOrganizationUnitLevel4ID] FOREIGN KEY ([DimOrganizationUnitLevel4ID]) REFERENCES Shared.DimOrganizationUnitLevel4 (DimOrganizationUnitLevel4ID),

	CONSTRAINT [fk_FactFinancialTxHeader_OriginalTransactionID] FOREIGN KEY ([OriginalFactFinancialTxHeaderID]) REFERENCES [Finance].[FactFinancialTxHeader] ([FactFinancialTxHeaderID]),
    CONSTRAINT [fk_FactFinancialTxHeader_RelatedTransactionID] FOREIGN KEY ([RelatedFactFinancialTxHeaderID]) REFERENCES [Finance].[FactFinancialTxHeader] ([FactFinancialTxHeaderID]),
	CONSTRAINT [fk_FactFinancialTxHeader_DimCurrencyID] FOREIGN KEY (DimCurrencyID) REFERENCES [Finance].DimCurrency (DimCurrencyID)
	
);








GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader';


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


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

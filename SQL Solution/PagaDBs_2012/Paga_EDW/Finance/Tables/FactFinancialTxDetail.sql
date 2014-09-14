CREATE TABLE [Finance].[FactFinancialTxDetail] (
    [FactFinancialTxDetailID]         INT             NOT NULL,
    [SourceKey]                          INT             NOT NULL,
    [FactFinancialTxHeaderID]      INT             NOT NULL,
	[DimCreatedDateID]                   INT      NOT NULL,
    [DimCreatedTimeID]                   INT      NOT NULL,
    [DimFinancialAccountID]              INT             NULL,
    [DimPagaAccountID]                   INT             NULL,
	[TextDescription]					VARCHAR(200)	NOT NULL,
    [DebitAmount]                        DECIMAL (18, 2) NULL,
    [CreditAmount]                       DECIMAL (18, 2) NULL,
    [MovementAmount]                     AS              ([CreditAmount]-[DebitAmount]),

    CONSTRAINT [pk_FactFinancialTxDetailID] PRIMARY KEY CLUSTERED ([FactFinancialTxDetailID] ASC),
    CONSTRAINT [fk_FactFinancialTxDetail_FactFinancialTxHeaderID] FOREIGN KEY (FactFinancialTxHeaderID) REFERENCES Finance.FactFinancialTxHeader (FactFinancialTxHeaderID),
	CONSTRAINT [fk_FactFinancialTxDetail_DimCreatedDateID] FOREIGN KEY ([DimCreatedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTxDetail_DimCreatedTimeID] FOREIGN KEY ([DimCreatedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTxDetail_DimFinancialAccountID] FOREIGN KEY ([DimFinancialAccountID]) REFERENCES [Finance].[DimFinancialAccount] ([DimFinancialAccountID]),
    CONSTRAINT [fk_FactFinancialTxDetail_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID])

);

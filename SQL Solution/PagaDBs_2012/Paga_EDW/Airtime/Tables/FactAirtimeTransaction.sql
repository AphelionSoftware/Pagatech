CREATE TABLE [Airtime].[FactAirtimeTransaction] (
    [FactAirtimeTransactionID]      INT             NOT NULL,
    [SourceKey]                     INT             NOT NULL,
    [DimDateID]                     INT             NULL,
    [DimTimeID]                     INT             NULL,
    [DimFinancialTransactionTypeID] INT             NULL,
    [DimFinancialAccountID]         INT             NULL,
    [DimPagaAccountID]              INT             NULL,
    [DimCityID]                     INT             NULL,
    [DebitAmount]                   DECIMAL (18, 2) NULL,
    [CreditAmount]                  DECIMAL (18, 2) NULL,
    CONSTRAINT [pk_FactAirtimeTransactionID] PRIMARY KEY CLUSTERED ([FactAirtimeTransactionID] ASC),
    CONSTRAINT [fk_FactAirtimeTransaction_DimCityID] FOREIGN KEY ([DimCityID]) REFERENCES [Location].[DimCity] ([DimCityID]),
    CONSTRAINT [fk_FactAirtimeTransaction_DimDateID] FOREIGN KEY ([DimDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactAirtimeTransaction_DimFinancialAccountID] FOREIGN KEY ([DimFinancialAccountID]) REFERENCES [Finance].[DimFinancialAccount] ([DimFinancialAccountID]),
    CONSTRAINT [fk_FactAirtimeTransaction_DimFinancialTransactionTypeID] FOREIGN KEY ([DimFinancialTransactionTypeID]) REFERENCES [Classification].[DimFinancialTransactionType] ([DimFinancialTransactionTypeID]),
    CONSTRAINT [fk_FactAirtimeTransaction_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID]),
    CONSTRAINT [fk_FactAirtimeTransaction_DimTimeID] FOREIGN KEY ([DimTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID])
);






GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTimeID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimCityID';


CREATE TABLE [Airtime].[FactAirtimeTransactions] (
    [FactAirtimeTransactionsID]     INT             NOT NULL,
    [DimDateID]                     INT             NULL,
    [DimTimeID]                     INT             NULL,
    [DimFinancialTransactionTypeID] INT             NULL,
    [DimFinancialAccountID]         INT             NULL,
    [DimPagaAccountID]              INT             NULL,
    [DimOrganizationUnitLevel5ID]   INT             NULL,
    [DimCityID]                     INT             NULL,
    [DebitAmount]                   DECIMAL (18, 2) NULL,
    [CreditAmount]                  DECIMAL (18, 2) NULL,
    CONSTRAINT [pk_FactAirtimeTransactionsID] PRIMARY KEY CLUSTERED ([FactAirtimeTransactionsID] ASC),
    CONSTRAINT [fk_FactAirtimeTransactions_DimCityID] FOREIGN KEY ([DimCityID]) REFERENCES [Location].[DimCity] ([DimCityID]),
    CONSTRAINT [fk_FactAirtimeTransactions_DimDateID] FOREIGN KEY ([DimDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactAirtimeTransactions_DimFinancialAccountID] FOREIGN KEY ([DimFinancialAccountID]) REFERENCES [Finance].[DimFinancialAccount] ([DimFinancialAccountID]),
    CONSTRAINT [fk_FactAirtimeTransactions_DimFinancialTransactionTypeID] FOREIGN KEY ([DimFinancialTransactionTypeID]) REFERENCES [Classification].[DimFinancialTransactionType] ([DimFinancialTransactionTypeID]),
    CONSTRAINT [fk_FactAirtimeTransactions_DimOrganizationUnitLevel5ID] FOREIGN KEY ([DimOrganizationUnitLevel5ID]) REFERENCES [Shared].[DimOrganizationUnitLevel5] ([DimOrganizationUnitLevel5ID]),
    CONSTRAINT [fk_FactAirtimeTransactions_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID]),
    CONSTRAINT [fk_FactAirtimeTransactions_DimTimeID] FOREIGN KEY ([DimTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID])
);






GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTimeID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DebitAmount', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CreditAmount', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'CreditAmount';


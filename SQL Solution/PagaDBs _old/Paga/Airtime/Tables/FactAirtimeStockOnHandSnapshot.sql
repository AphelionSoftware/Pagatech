CREATE TABLE [Airtime].[FactAirtimeStockOnHandSnapshot] (
    [FactAirtimeStockOnHandSnapshotID] INT             NOT NULL,
    [DimDateID]                        INT             NULL,
    [DimMobileOperatorID]              INT             NULL,
    [DimPagaAccountID]                 INT             NULL,
    [DimCityID]                        INT             NULL,
    [AccountBalance]                   DECIMAL (18, 2) NULL,
    CONSTRAINT [pk_FactAirtimeStockOnHandSnapshotID] PRIMARY KEY CLUSTERED ([FactAirtimeStockOnHandSnapshotID] ASC),
    CONSTRAINT [fk_FactAirtimeStockOnHandSnapshot_DimCityID] FOREIGN KEY ([DimCityID]) REFERENCES [Location].[DimCity] ([DimCityID]),
    CONSTRAINT [fk_FactAirtimeStockOnHandSnapshot_DimDateID] FOREIGN KEY ([DimDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactAirtimeStockOnHandSnapshot_DimMobileOperatorID] FOREIGN KEY ([DimMobileOperatorID]) REFERENCES [Airtime].[DimMobileOperator] ([DimMobileOperatorID]),
    CONSTRAINT [fk_FactAirtimeStockOnHandSnapshot_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID])
);


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimMobileOperatorID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountBalance', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'AccountBalance';


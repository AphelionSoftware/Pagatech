CREATE TABLE [Airtime].[FactAirtimeStockOnHandSnapshot] (
    [FactAirtimeStockOnHandSnapshotID] INT             IDENTITY (1, 1) NOT NULL,
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
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeStockOnHandSnapshot';


GO



GO



GO



GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'5', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeStockOnHandSnapshot';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2900', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'FactAirtimeStockOnHandSnapshot';


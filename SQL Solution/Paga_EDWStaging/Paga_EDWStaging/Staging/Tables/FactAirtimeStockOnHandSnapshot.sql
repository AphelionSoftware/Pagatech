CREATE TABLE [Staging].[FactAirtimeStockOnHandSnapshot] (
    [FactAirtimeStockOnHandSnapshotID] INT             NULL,
    [AccountBalance]                   DECIMAL (18, 2) NULL,
    [DimCityID]                        INT             NULL,
    [DimDateID]                        INT             NULL,
    [DimMobileOperatorID]              INT             NULL,
    [DimOrganizationUnitLevel5ID]      INT             NULL,
    [DimPagaAccountID]                 INT             NULL
);


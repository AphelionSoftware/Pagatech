CREATE TABLE [Staging].[Airtime_FactAirtimeStockMovement] (
    [DimDateID]               INT             NULL,
    [MobileOperatorSourceKey] INT             NULL,
    [PagaAccountSourceKey]    INT             NULL,
    [CitySourceKey]           INT             NULL,
    [MovementAmount]          DECIMAL (18, 2) NULL
);


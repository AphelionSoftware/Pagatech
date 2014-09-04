CREATE TABLE [Staging].[Airtime_FactAirtimeStockMovement] (
    [DimDateID]               INT             NULL,
    [MobileOperatorSourceKey] VARCHAR (255)   NULL,
    [PagaAccountSourceKey]    VARCHAR (255)   NULL,
    [CitySourceKey]           VARCHAR (255)   NULL,
    [MovementAmount]          DECIMAL (18, 2) NULL
);




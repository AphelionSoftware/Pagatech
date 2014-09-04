CREATE TABLE [Staging].[Airtime_FactAirtimeStockOnHandSnapshot] (
    [DimDateID]               INT             NULL,
    [MobileOperatorSourceKey] VARCHAR (255)   NULL,
    [PagaAccountSourceKey]    VARCHAR (255)   NULL,
    [CitySourceKey]           VARCHAR (255)   NULL,
    [AccountBalance]          DECIMAL (18, 2) NULL
);




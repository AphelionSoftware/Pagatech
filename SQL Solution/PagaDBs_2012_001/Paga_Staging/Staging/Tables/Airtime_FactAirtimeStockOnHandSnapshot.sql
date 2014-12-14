CREATE TABLE [Staging].[Airtime_FactAirtimeStockOnHandSnapshot] (
    [AccountBalance]             DECIMAL (18, 2) NULL,
    [DimDateID]                  INT             NULL,
    [DimCitySourceKey]           VARCHAR (255)   NULL,
    [DimMobileOperatorSourceKey] VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]    VARCHAR (255)   NULL,
    [change_operation]           CHAR (1)        DEFAULT ((1)) NOT NULL
);








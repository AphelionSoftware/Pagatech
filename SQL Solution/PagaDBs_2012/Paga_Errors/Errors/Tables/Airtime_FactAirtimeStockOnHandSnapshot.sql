CREATE TABLE [Errors].[Airtime_FactAirtimeStockOnHandSnapshot] (
    [QueueID]                 INT             NOT NULL,
    [SSISErrorCode]           INT             NOT NULL,
    [SSISErrorColumn]         INT             NOT NULL,
    [PackageName]             VARCHAR (255)   NOT NULL,
    [ErrorType]               VARCHAR (255)   NOT NULL,
    [AccountBalance]          DECIMAL (18, 2) NULL,
    [CitySourceKey]           INT             NULL,
    [MobileOperatorSourceKey] INT             NULL,
    [PagaAccountSourceKey]    INT             NULL
);


CREATE TABLE [Errors].[Airtime_FactAirtimeStockMovement] (
    [QueueID]                 INT             NOT NULL,
    [SSISErrorCode]           INT             NOT NULL,
    [SSISErrorColumn]         INT             NOT NULL,
    [PackageName]             VARCHAR (255)   NOT NULL,
    [ErrorType]               VARCHAR (255)   NOT NULL,
    [CitySourceKey]           INT             NULL,
    [MobileOperatorSourceKey] INT             NULL,
    [MovementAmount]          DECIMAL (18, 2) NULL,
    [PagaAccountSourceKey]    INT             NULL
);


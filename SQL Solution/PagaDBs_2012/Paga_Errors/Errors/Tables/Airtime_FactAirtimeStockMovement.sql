CREATE TABLE [Errors].[Airtime_FactAirtimeStockMovement] (
    [QueueID]                    INT             NOT NULL,
    [SSISErrorCode]              INT             NOT NULL,
    [SSISErrorColumn]            INT             NOT NULL,
    [PackageName]                VARCHAR (255)   NOT NULL,
    [ErrorType]                  VARCHAR (255)   NOT NULL,
    [change_operation]           CHAR (1)        NOT NULL,
    [DimCitySourceKey]           VARCHAR (255)   NULL,
    [DimDateID]                  INT             NULL,
    [DimMobileOperatorSourceKey] VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]    VARCHAR (255)   NULL,
    [MovementAmount]             DECIMAL (18, 2) NULL
);




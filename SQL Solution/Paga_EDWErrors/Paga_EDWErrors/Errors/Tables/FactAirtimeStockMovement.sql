CREATE TABLE [Errors].[FactAirtimeStockMovement] (
    [QueueID]                     INT             NOT NULL,
    [ErrorCode]                   INT             NOT NULL,
    [ErrorColumn]                 INT             NOT NULL,
    [PackageName]                 VARCHAR (255)   NOT NULL,
    [FactAirtimeStockMovementID]  INT             NULL,
    [DimCityID]                   INT             NULL,
    [DimDateID]                   INT             NULL,
    [DimMobileOperatorID]         INT             NULL,
    [DimOrganizationUnitLevel5ID] INT             NULL,
    [DimPagaAccountID]            INT             NULL,
    [MovementAmount]              DECIMAL (18, 2) NULL,
    [RunID]                       INT             NOT NULL
);




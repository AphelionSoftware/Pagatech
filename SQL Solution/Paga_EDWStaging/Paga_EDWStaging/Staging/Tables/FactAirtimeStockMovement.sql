CREATE TABLE [Staging].[FactAirtimeStockMovement] (
    [FactAirtimeStockMovementID]      INT             NULL,
    [DimPagaAccountID]                INT             NULL,
    [MovementAmount]                  DECIMAL (18, 2) NULL,
    [RunID]                           INT             NOT NULL,
    [CitySourceKey]                   VARCHAR (255)   NULL,
    [DateSourceKey]                   VARCHAR (255)   NULL,
    [MobileOperatorSourceKey]         VARCHAR (255)   NULL,
    [OrganizationUnitLevel5SourceKey] VARCHAR (255)   NULL
);


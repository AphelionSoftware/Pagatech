CREATE TABLE [Staging].[FactAirtimeStockMovement] (
    [FactAirtimeStockMovementID]  INT             NULL,
    [DimCityID]                   INT             NULL,
    [DimDateID]                   INT             NULL,
    [DimMobileOperatorID]         INT             NULL,
    [DimOrganizationUnitLevel5ID] INT             NULL,
    [DimPagaAccountID]            INT             NULL,
    [MovementAmount]              DECIMAL (18, 2) NULL
);


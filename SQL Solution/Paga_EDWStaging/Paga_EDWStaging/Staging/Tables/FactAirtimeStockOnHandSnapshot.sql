CREATE TABLE [Staging].[FactAirtimeStockOnHandSnapshot] (
    [FactAirtimeStockOnHandSnapshotID] INT             NULL,
    [AccountBalance]                   DECIMAL (18, 2) NULL,
    [DimPagaAccountID]                 INT             NULL,
    [RunID]                            INT             NOT NULL,
    [CitySourceKey]                    VARCHAR (255)   NULL,
    [DateSourceKey]                    VARCHAR (255)   NULL,
    [MobileOperatorSourceKey]          VARCHAR (255)   NULL,
    [OrganizationUnitLevel5SourceKey]  VARCHAR (255)   NULL
);


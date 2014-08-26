CREATE TABLE [Errors].[FactAirtimeStockOnHandSnapshot] (
    [QueueID]                          INT             NOT NULL,
    [ErrorCode]                        INT             NOT NULL,
    [ErrorColumn]                      INT             NOT NULL,
    [PackageName]                      VARCHAR (255)   NOT NULL,
    [FactAirtimeStockOnHandSnapshotID] INT             NULL,
    [AccountBalance]                   DECIMAL (18, 2) NULL,
    [DimCityID]                        INT             NULL,
    [DimDateID]                        INT             NULL,
    [DimMobileOperatorID]              INT             NULL,
    [DimOrganizationUnitLevel5ID]      INT             NULL,
    [DimPagaAccountID]                 INT             NULL,
    [RunID]                            INT             NOT NULL
);




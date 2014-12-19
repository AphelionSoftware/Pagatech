CREATE TABLE [Staging].[Classification_DimOrganizationUnitType] (
    [DimOrganizationUnitTypeID] INT           NULL,
    [DeltaHash]                 BIGINT        NULL,
    [Name]                      VARCHAR (255) NOT NULL,
    [SourceKey]                 INT           NOT NULL,
    [SourceKeyHash]             BIGINT        NULL
);


CREATE TABLE [Staging].[Shared_DimOrganizationUnitLevel4] (
    [DimOrganizationUnitLevel4ID]        INT           NULL,
    [DeltaHash]                          BIGINT        NULL,
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          INT           NOT NULL,
    [SourceKeyHash]                      BIGINT        NULL,
    [DimOrganizationUnitLevel3SourceKey] INT           NOT NULL,
    [DimOrganizationUnitTypeSourceKey]   INT           NOT NULL
);


CREATE TABLE [Staging].[DimOrganizationUnitLevel4] (
    [DimOrganizationUnitLevel4ID]        INT           NULL,
    [DeltaHash]                          BIGINT        NULL,
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          VARCHAR (255) NOT NULL,
    [SourceKeyHash]                      BIGINT        NULL,
    [DimOrganizationUnitLevel3SourceKey] VARCHAR (255) NOT NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL
);


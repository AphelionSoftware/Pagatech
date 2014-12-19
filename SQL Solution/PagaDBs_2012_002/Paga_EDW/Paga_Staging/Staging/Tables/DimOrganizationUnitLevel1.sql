CREATE TABLE [Staging].[DimOrganizationUnitLevel1] (
    [DimOrganizationUnitLevel1ID]      INT           NULL,
    [DeltaHash]                        BIGINT        NULL,
    [IdentificationNumber]             VARCHAR (20)  NULL,
    [Name]                             VARCHAR (255) NOT NULL,
    [SourceKey]                        VARCHAR (255) NOT NULL,
    [SourceKeyHash]                    BIGINT        NULL,
    [DimOrganizationSourceKey]         VARCHAR (255) NOT NULL,
    [DimOrganizationUnitTypeSourceKey] VARCHAR (255) NOT NULL
);


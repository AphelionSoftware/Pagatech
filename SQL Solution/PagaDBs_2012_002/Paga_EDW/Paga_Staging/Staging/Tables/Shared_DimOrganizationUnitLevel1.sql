CREATE TABLE [Staging].[Shared_DimOrganizationUnitLevel1] (
    [DimOrganizationUnitLevel1ID]      INT           NULL,
    [DeltaHash]                        BIGINT        NULL,
    [IdentificationNumber]             VARCHAR (20)  NULL,
    [Name]                             VARCHAR (255) NOT NULL,
    [SourceKey]                        INT           NOT NULL,
    [SourceKeyHash]                    BIGINT        NULL,
    [DimOrganizationSourceKey]         INT           NOT NULL,
    [DimOrganizationUnitTypeSourceKey] INT           NOT NULL
);


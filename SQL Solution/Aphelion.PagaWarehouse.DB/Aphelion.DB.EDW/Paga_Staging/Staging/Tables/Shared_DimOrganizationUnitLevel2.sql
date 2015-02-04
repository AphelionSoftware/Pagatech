CREATE TABLE [Staging].[Shared_DimOrganizationUnitLevel2] (
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          INT           NOT NULL,
    [DimOrganizationUnitLevel1SourceKey] INT           NOT NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL
);


















GO



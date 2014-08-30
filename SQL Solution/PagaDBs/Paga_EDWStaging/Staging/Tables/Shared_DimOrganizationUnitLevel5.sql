CREATE TABLE [Staging].[Shared_DimOrganizationUnitLevel5] (
    [Name]                            VARCHAR (255) NOT NULL,
    [Code]                            VARCHAR (50)  NOT NULL,
    [OrganizationSourceKey]           INT           NOT NULL,
    [OrganizationUnitLevel4SourceKey] INT           NOT NULL,
    [OrganizationUnitTypeSourceKey]   INT           NOT NULL,
    [DealerSourceKey]                 INT           NOT NULL,
    [IdentificationNumber]            VARCHAR (20)  NULL
);


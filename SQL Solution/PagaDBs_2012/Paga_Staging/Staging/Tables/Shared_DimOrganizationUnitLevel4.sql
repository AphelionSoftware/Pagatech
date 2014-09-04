CREATE TABLE [Staging].[Shared_DimOrganizationUnitLevel4] (
    [SourceKey]                       VARCHAR (255) NOT NULL,
    [Name]                            VARCHAR (255) NOT NULL,
    [Code]                            VARCHAR (50)  NOT NULL,
    [OrganizationUnitLevel3SourceKey] VARCHAR (255) NOT NULL,
    [OrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL,
    [DealerSourceKey]                 VARCHAR (255) NOT NULL,
    [IdentificationNumber]            VARCHAR (20)  NULL
);




CREATE TABLE [Staging].[Shared_DimOrganizationUnitLevel5] (
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          VARCHAR (255) NOT NULL,
    [DimUserSourceKey]                 VARCHAR (255) NOT NULL,
    [DimOrganizationUnitLevel4SourceKey] VARCHAR (255) NOT NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL,
    [change_operation]                   CHAR (1)      DEFAULT ((1)) NOT NULL
);










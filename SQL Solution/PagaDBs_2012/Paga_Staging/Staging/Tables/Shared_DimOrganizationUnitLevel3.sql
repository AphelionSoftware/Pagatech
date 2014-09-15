CREATE TABLE [Staging].[Shared_DimOrganizationUnitLevel3] (
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          VARCHAR (255) NOT NULL,
    [DimOrganizationUnitLevel2SourceKey] VARCHAR (255) NOT NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL,
    [change_operation]                   CHAR (1)      DEFAULT ((1)) NOT NULL
);


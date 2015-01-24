CREATE TABLE [Staging].[Shared_DimOrganizationUnitLevel2] (
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          INT           NOT NULL,
    [DimOrganizationUnitLevel1SourceKey] INT           NOT NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL,
    [SYS_CHANGE_VERSION]                 BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]               CHAR (1)      DEFAULT ('I') NOT NULL
);














GO





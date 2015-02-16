CREATE TABLE [Updates].[Shared_DimOrganizationUnitLevel1] (
    [SourceKey]                 INT           NOT NULL,
    [Name]                      VARCHAR (255) NOT NULL,
    [DimOrganizationID]         INT           NOT NULL,
    [DimOrganizationUnitTypeID] INT           NOT NULL,
    [IdentificationNumber]      VARCHAR (20)  NULL
);


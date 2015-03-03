CREATE TABLE [Updates].[Shared_DimOrganizationUnitLevel3] (
    [SourceKey]                   INT           NOT NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [DimOrganizationUnitLevel2ID] INT           NOT NULL,
    [DimOrganizationUnitTypeID]   INT           NOT NULL,
    [IdentificationNumber]        VARCHAR (20)  NULL,
    [SYS_CHANGE_VERSION]          BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]        CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Shared_DimOrganizationUnitLevel3_SourceKey]
    ON [Updates].[Shared_DimOrganizationUnitLevel3]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);


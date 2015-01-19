CREATE TABLE [Staging].[Shared_DimOrganizationUnitLevel4] (
    [DimOrganizationUnitLevel4ID]        INT           NULL,
    [DeltaHash]                          BIGINT        NULL,
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          INT           NOT NULL,
    [SourceKeyHash]                      BIGINT        NULL,
    [DimOrganizationUnitLevel3SourceKey] INT           NOT NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL,
    [SYS_CHANGE_OPERATION]               CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]                 BIGINT        DEFAULT ((0)) NOT NULL
);








GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_DimOrganizationUnitLevel4]
    ON [Staging].[Shared_DimOrganizationUnitLevel4]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);


CREATE TABLE [Staging].[Shared_DimOrganizationUnitLevel4] (
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          INT           NOT NULL,
    [DimOrganizationUnitLevel3SourceKey] INT           NOT NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL,
    [SYS_CHANGE_VERSION]                 BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]               CHAR (1)      DEFAULT ('I') NULL,
    [paga_change_log_id]                 INT           NULL,
    [row_id]                             INT           IDENTITY (1, 1) NOT NULL
);


























GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_DimOrganizationUnitLevel4]
    ON [Staging].[Shared_DimOrganizationUnitLevel4]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC, [row_id] ASC);




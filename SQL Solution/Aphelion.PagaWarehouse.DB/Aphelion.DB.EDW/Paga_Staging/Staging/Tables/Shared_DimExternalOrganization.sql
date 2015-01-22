CREATE TABLE [Staging].[Shared_DimExternalOrganization] (
    [DimExternalOrganizationID] INT           NULL,
    [DeltaHash]                 BIGINT        NULL,
    [Name]                      VARCHAR (255) NULL,
    [SourceKey]                 INT           NOT NULL,
    [SourceKeyHash]             BIGINT        NULL,
    [SYS_CHANGE_OPERATION]      CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]        BIGINT        DEFAULT ((0)) NOT NULL
);








GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_DimExternalOrganization]
    ON [Staging].[Shared_DimExternalOrganization]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC, [SourceKey] ASC);




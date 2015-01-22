CREATE TABLE [Staging].[Finance_DimInitiatingUserRole] (
    [DimInitiatingUserRoleID] INT           NULL,
    [DeltaHash]               BIGINT        NULL,
    [Name]                    VARCHAR (255) NULL,
    [SourceKey]               INT           NOT NULL,
    [SourceKeyHash]           BIGINT        NULL,
    [DimRoleSourceKey]        INT           NOT NULL,
    [DimUserSourceKey]        INT           NOT NULL,
    [SYS_CHANGE_OPERATION]    CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]      BIGINT        DEFAULT ((0)) NOT NULL
);










GO
CREATE UNIQUE CLUSTERED INDEX [ix_Finance_DimInitiatingUserRole]
    ON [Staging].[Finance_DimInitiatingUserRole]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);






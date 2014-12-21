CREATE TABLE [Staging].[Finance_DimInitiatingUserRole] (
    [DimInitiatingUserRoleID] INT           NULL,
    [DeltaHash]               BIGINT        NULL,
    [Name]                    VARCHAR (255) NULL,
    [SourceKey]               INT           NOT NULL,
    [SourceKeyHash]           BIGINT        NULL,
    [DimRoleSourceKey]        INT           NOT NULL,
    [DimUserSourceKey]        INT           NOT NULL
);


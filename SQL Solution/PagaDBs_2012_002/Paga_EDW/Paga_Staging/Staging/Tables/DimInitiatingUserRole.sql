CREATE TABLE [Staging].[DimInitiatingUserRole] (
    [DimInitiatingUserRoleID] INT           NULL,
    [DeltaHash]               BIGINT        NULL,
    [Name]                    VARCHAR (255) NULL,
    [SourceKey]               INT           NOT NULL,
    [SourceKeyHash]           BIGINT        NULL,
    [DimRoleSourceKey]        VARCHAR (255) NOT NULL,
    [DimUserSourceKey]        VARCHAR (255) NOT NULL
);


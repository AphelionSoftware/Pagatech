CREATE TABLE [Staging].[Dim_Role] (
    [DeltaHash]         BIGINT        NULL,
    [DescriptionText]   VARCHAR (255) NULL,
    [DimRoleID]         INT           NULL,
    [Name]              VARCHAR (255) NULL,
    [SourceKey]         INT           NOT NULL,
    [SourceKeyHash]     BIGINT        NULL,
    [SystemDescription] VARCHAR (100) NULL
);


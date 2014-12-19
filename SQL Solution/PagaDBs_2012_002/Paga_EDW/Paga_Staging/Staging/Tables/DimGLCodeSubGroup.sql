CREATE TABLE [Staging].[DimGLCodeSubGroup] (
    [DimGLCodeSubGroupID]     INT           NULL,
    [DeltaHash]               BIGINT        NULL,
    [GLCodeRange]             VARCHAR (255) NULL,
    [Name]                    VARCHAR (255) NOT NULL,
    [SourceKey]               VARCHAR (255) NOT NULL,
    [SourceKeyHash]           BIGINT        NULL,
    [DimGLCodeGroupSourceKey] VARCHAR (255) NOT NULL
);


CREATE TABLE [Staging].[Dim_GLCodeGroup] (
    [DeltaHash]        BIGINT        NULL,
    [DimGLCodeGroupID] INT           NULL,
    [GLCodeRange]      VARCHAR (50)  NULL,
    [Name]             VARCHAR (255) NULL,
    [SourceKey]        INT           NULL,
    [SourceKeyHash]    BIGINT        NULL,
    [Dim_COASourceKey] INT           NULL
);


CREATE TABLE [Errors].[Finance_DimGLCodeGroup] (
    [QueueID]                     INT           NOT NULL,
    [SSISErrorCode]               INT           NOT NULL,
    [SSISErrorColumn]             INT           NOT NULL,
    [PackageName]                 VARCHAR (255) NOT NULL,
    [ErrorType]                   VARCHAR (255) NOT NULL,
    [DeltaHash]                   BIGINT        NULL,
    [DimChartOfAccountsSourceKey] VARCHAR (255) NOT NULL,
    [DimGLCodeGroupID]            INT           NULL,
    [GLCodeRange]                 VARCHAR (255) NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [SourceKey]                   VARCHAR (255) NOT NULL,
    [SourceKeyHash]               BIGINT        NULL
);


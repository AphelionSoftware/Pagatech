CREATE TABLE [Errors].[Dim_ProcessChannel] (
    [QueueID]             INT           NOT NULL,
    [SSISErrorCode]       INT           NOT NULL,
    [SSISErrorColumn]     INT           NOT NULL,
    [PackageName]         VARCHAR (255) NOT NULL,
    [ErrorType]           VARCHAR (255) NOT NULL,
    [DimProcessChannelID] INT           NOT NULL,
    [SourceKey]           VARCHAR (50)  NULL,
    [DeltaHash]           BIGINT        NULL,
    [Name]                VARCHAR (255) NULL,
    [SourceKeyHash]       BIGINT        NULL
);


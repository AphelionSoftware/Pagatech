CREATE TABLE [Errors].[DimPagaAccountStatus] (
    [QueueID]                INT           NOT NULL,
    [ErrorCode]              INT           NOT NULL,
    [ErrorColumn]            INT           NOT NULL,
    [PackageName]            VARCHAR (255) NOT NULL,
    [DimPagaAccountStatusID] INT           NULL,
    [Code]                   VARCHAR (50)  NOT NULL,
    [DeltaHash]              BIGINT        NOT NULL,
    [Name]                   VARCHAR (255) NOT NULL,
    [SourceKey]              VARCHAR (255) NOT NULL,
    [SourceKeyHash]          BIGINT        NOT NULL
);




CREATE TABLE [Errors].[DimPagaAccount] (
    [QueueID]          INT           NOT NULL,
    [ErrorCode]        INT           NOT NULL,
    [ErrorColumn]      INT           NOT NULL,
    [PackageName]      VARCHAR (255) NOT NULL,
    [DimPagaAccountID] INT           NULL,
    [RunID]            INT           NOT NULL
);


CREATE TABLE [Staging].[Dim_ProcessStatus] (
    [DeltaHash]          BIGINT        NULL,
    [DimProcessStatusID] INT           NULL,
    [Name]               VARCHAR (255) NULL,
    [SourceKey]          VARCHAR (255) NOT NULL,
    [SourceKeyHash]      BIGINT        NULL
);


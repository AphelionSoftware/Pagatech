CREATE TABLE [Staging].[DimProcessChannel] (
    [DeltaHash]      BIGINT         NULL,
    [DimChannelID]   INT            NULL,
    [Name]           VARCHAR (255)  NOT NULL,
    [SourceKey]      VARCHAR (255)  NOT NULL,
    [SourceKeyHash]  BIGINT         NULL,
    [TextDesciption] VARCHAR (1000) NULL
);


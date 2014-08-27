CREATE TABLE [Staging].[DimCOALevel2] (
    [DimCOALevel2ID] INT           NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [DeltaHash]      BIGINT        NOT NULL,
    [DimCOALevel1ID] INT           NOT NULL,
    [GLCodeRange]    VARCHAR (255) NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [SourceKey]      VARCHAR (255) NOT NULL,
    [SourceKeyHash]  BIGINT        NOT NULL
);


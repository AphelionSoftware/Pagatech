CREATE TABLE [Errors].[DimCOALevel3] (
    [QueueID]        INT           NOT NULL,
    [ErrorCode]      INT           NOT NULL,
    [ErrorColumn]    INT           NOT NULL,
    [PackageName]    VARCHAR (255) NOT NULL,
    [DimCOALevel3ID] INT           NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [DeltaHash]      BIGINT        NOT NULL,
    [DimCOALevel2ID] INT           NOT NULL,
    [GLCodeRange]    VARCHAR (255) NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [SourceKey]      VARCHAR (255) NOT NULL,
    [SourceKeyHash]  BIGINT        NOT NULL
);




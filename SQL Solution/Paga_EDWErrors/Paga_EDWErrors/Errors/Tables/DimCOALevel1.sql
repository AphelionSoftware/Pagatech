﻿CREATE TABLE [Errors].[DimCOALevel1] (
    [QueueID]        INT           NOT NULL,
    [ErrorCode]      INT           NOT NULL,
    [ErrorColumn]    INT           NOT NULL,
    [PackageName]    VARCHAR (255) NOT NULL,
    [DimCOALevel1ID] INT           NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [DeltaHash]      BIGINT        NOT NULL,
    [GLCodeRange]    VARCHAR (255) NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [SourceKey]      VARCHAR (255) NOT NULL,
    [SourceKeyHash]  BIGINT        NOT NULL
);




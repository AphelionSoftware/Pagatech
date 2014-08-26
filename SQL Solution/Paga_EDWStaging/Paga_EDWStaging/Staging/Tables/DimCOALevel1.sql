CREATE TABLE [Staging].[DimCOALevel1] (
    [DimCOALevel1ID] INT           NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [DeltaHash]      BIGINT        NOT NULL,
    [GLCodeRange]    VARCHAR (255) NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [SourceKey]      VARCHAR (255) NOT NULL,
    [SourceKeyHash]  BIGINT        NOT NULL,
    [sysCreatedBy]   VARCHAR (255) NOT NULL,
    [sysCreatedOn]   DATETIME      NOT NULL,
    [sysModifiedBy]  VARCHAR (255) NOT NULL,
    [sysModifiedOn]  DATETIME      NOT NULL
);


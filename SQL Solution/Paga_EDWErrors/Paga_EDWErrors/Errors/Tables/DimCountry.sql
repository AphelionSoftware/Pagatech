CREATE TABLE [Errors].[DimCountry] (
    [QueueID]       INT           NOT NULL,
    [ErrorCode]     INT           NOT NULL,
    [ErrorColumn]   INT           NOT NULL,
    [PackageName]   VARCHAR (255) NOT NULL,
    [DimCountryID]  INT           NULL,
    [Code]          VARCHAR (50)  NOT NULL,
    [Country]       VARCHAR (255) NULL,
    [DeltaHash]     BIGINT        NOT NULL,
    [ISOCode]       CHAR (3)      NULL,
    [Name]          VARCHAR (255) NOT NULL,
    [SourceKey]     VARCHAR (255) NOT NULL,
    [SourceKeyHash] BIGINT        NOT NULL
);




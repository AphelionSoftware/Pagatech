CREATE TABLE [Errors].[DimLocalGovernmentArea] (
    [QueueID]                  INT           NOT NULL,
    [SSISErrorCode]            INT           NOT NULL,
    [SSISErrorColumn]          INT           NOT NULL,
    [PackageName]              VARCHAR (255) NOT NULL,
    [ErrorType]                VARCHAR (255) NOT NULL,
    [DimLocalGovernmentAreaID] INT           NULL,
    [Code]                     VARCHAR (50)  NOT NULL,
    [DeltaHash]                BIGINT        NULL,
    [DimRegionSourceKey]       VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [SourceKeyHash]            BIGINT        NULL,
    [DimRegionID]              INT           NULL
);


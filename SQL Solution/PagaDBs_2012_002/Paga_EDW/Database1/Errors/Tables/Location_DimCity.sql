CREATE TABLE [Errors].[Location_DimCity] (
    [QueueID]                         INT           NOT NULL,
    [SSISErrorCode]                   INT           NOT NULL,
    [SSISErrorColumn]                 INT           NOT NULL,
    [PackageName]                     VARCHAR (255) NOT NULL,
    [ErrorType]                       VARCHAR (255) NOT NULL,
    [DeltaHash]                       BIGINT        NULL,
    [DimCityID]                       INT           NULL,
    [DimLocalGovernmentAreaSourceKey] VARCHAR (255) NOT NULL,
    [Name]                            VARCHAR (255) NOT NULL,
    [PostalCode]                      INT           NOT NULL,
    [SourceKey]                       VARCHAR (255) NOT NULL,
    [SourceKeyHash]                   BIGINT        NULL
);


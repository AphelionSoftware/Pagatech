CREATE TABLE [Staging].[DimCity] (
    [DimCityID]                       INT           NULL,
    [DeltaHash]                       BIGINT        NULL,
    [Name]                            VARCHAR (255) NOT NULL,
    [PostalCode]                      INT           NOT NULL,
    [SourceKey]                       VARCHAR (255) NOT NULL,
    [SourceKeyHash]                   BIGINT        NULL,
    [DimLocalGovernmentAreaSourceKey] VARCHAR (255) NOT NULL
);


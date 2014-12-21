CREATE TABLE [Staging].[Location_DimCity] (
    [DimCityID]                       INT           NULL,
    [DeltaHash]                       BIGINT        NULL,
    [Name]                            VARCHAR (255) NOT NULL,
    [PostalCode]                      INT           NOT NULL,
    [SourceKey]                       INT           NOT NULL,
    [SourceKeyHash]                   BIGINT        NULL,
    [DimLocalGovernmentAreaSourceKey] INT           NOT NULL
);


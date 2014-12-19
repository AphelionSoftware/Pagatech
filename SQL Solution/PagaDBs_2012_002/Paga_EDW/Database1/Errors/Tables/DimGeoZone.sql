CREATE TABLE [Errors].[DimGeoZone] (
    [QueueID]             INT           NOT NULL,
    [SSISErrorCode]       INT           NOT NULL,
    [SSISErrorColumn]     INT           NOT NULL,
    [PackageName]         VARCHAR (255) NOT NULL,
    [ErrorType]           VARCHAR (255) NOT NULL,
    [DimGeoZoneID]        INT           NULL,
    [Code]                VARCHAR (50)  NOT NULL,
    [DeltaHash]           BIGINT        NULL,
    [DimCountrySourceKey] VARCHAR (255) NOT NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [SourceKey]           VARCHAR (255) NOT NULL,
    [SourceKeyHash]       BIGINT        NULL,
    [DimCountryID]        INT           NULL
);


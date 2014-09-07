CREATE TABLE [Errors].[Location_DimGeoZone] (
    [QueueID]             INT           NOT NULL,
    [SSISErrorCode]       INT           NOT NULL,
    [SSISErrorColumn]     INT           NOT NULL,
    [PackageName]         VARCHAR (255) NOT NULL,
    [ErrorType]           VARCHAR (255) NOT NULL,
    [change_operation]    CHAR (1)      NOT NULL,
    [Code]                VARCHAR (50)  NOT NULL,
    [DimCountrySourceKey] VARCHAR (255) NOT NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [SourceKey]           VARCHAR (255) NOT NULL
);




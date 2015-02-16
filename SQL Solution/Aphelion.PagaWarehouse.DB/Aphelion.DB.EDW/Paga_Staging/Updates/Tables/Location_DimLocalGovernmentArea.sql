CREATE TABLE [Updates].[Location_DimLocalGovernmentArea] (
    [SourceKey]   INT           NOT NULL,
    [Name]        VARCHAR (255) NOT NULL,
    [Code]        VARCHAR (50)  NOT NULL,
    [DimRegionID] INT           NOT NULL
);


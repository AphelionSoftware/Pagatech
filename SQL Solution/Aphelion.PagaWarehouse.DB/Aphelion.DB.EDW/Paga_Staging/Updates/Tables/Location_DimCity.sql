CREATE TABLE [Updates].[Location_DimCity] (
    [SourceKey]                INT           NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [DimLocalGovernmentAreaID] INT           NOT NULL,
    [PostalCode]               INT           NOT NULL
);


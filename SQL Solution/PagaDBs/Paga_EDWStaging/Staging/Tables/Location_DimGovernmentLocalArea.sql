CREATE TABLE [Staging].[Location_DimGovernmentLocalArea] (
    [Name]                    VARCHAR (255) NOT NULL,
    [Code]                    VARCHAR (50)  NOT NULL,
    [RegionSourceKey]         INT           NOT NULL,
    [LocalGovernmentAreaCode] VARCHAR (5)   NULL
);


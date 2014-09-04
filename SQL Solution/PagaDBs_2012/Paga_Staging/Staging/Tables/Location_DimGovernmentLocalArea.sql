CREATE TABLE [Staging].[Location_DimGovernmentLocalArea] (
    [SourceKey]               VARCHAR (255) NOT NULL,
    [Name]                    VARCHAR (255) NOT NULL,
    [Code]                    VARCHAR (50)  NOT NULL,
    [RegionSourceKey]         VARCHAR (255) NOT NULL,
    [LocalGovernmentAreaCode] VARCHAR (5)   NULL
);




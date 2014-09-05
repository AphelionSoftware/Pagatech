CREATE TABLE [Staging].[Location_DimLocalGovernmentArea] (
    [SourceKey]               VARCHAR (255) NOT NULL,
    [Name]                    VARCHAR (255) NOT NULL,
    [Code]                    VARCHAR (50)  NOT NULL,
    [RegionSourceKey]         VARCHAR (255) NOT NULL,
    [change_operation]        CHAR (1)      NULL
);






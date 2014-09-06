CREATE TABLE [Staging].[Location_DimCity] (
    [Name]                            VARCHAR (255) NOT NULL,
    [PostalCode]                      INT           NOT NULL,
    [SourceKey]                       VARCHAR (255) NOT NULL,
    [DimLocalGovernmentAreaSourceKey] VARCHAR (255) NOT NULL,
    [change_operation]                CHAR (1)      DEFAULT ((1)) NOT NULL
);








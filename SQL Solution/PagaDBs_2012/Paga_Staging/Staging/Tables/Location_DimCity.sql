CREATE TABLE [Staging].[Location_DimCity] (
    [SourceKey]                    VARCHAR (255) NOT NULL,
    [Name]                         VARCHAR (255) NOT NULL,
    [LocalGovernmentAreaSourceKey] VARCHAR (50)  NOT NULL,
    [PostalCode]                   INT           NOT NULL,
    [change_operation]             CHAR (1)      NULL
);






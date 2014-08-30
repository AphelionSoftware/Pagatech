CREATE TABLE [Staging].[Classification_DimProcessType] (
    [SourceKey]                 VARCHAR (255)  NOT NULL,
    [Name]                      VARCHAR (255)  NOT NULL,
    [ProcessTypeGroupSourceKey] INT            NOT NULL,
    [Description]               VARCHAR (1000) NULL
);




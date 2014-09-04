CREATE TABLE [Staging].[Activity_DimChannel] (
    [SourceKey]        VARCHAR (255)  NOT NULL,
    [Name]             VARCHAR (255)  NOT NULL,
    [Code]             VARCHAR (50)   NOT NULL,
    [Description]      VARCHAR (1000) NULL,
    [change_operation] CHAR (1)       NULL
);




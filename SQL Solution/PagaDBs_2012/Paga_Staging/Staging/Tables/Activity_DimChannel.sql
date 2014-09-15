CREATE TABLE [Staging].[Activity_DimChannel] (
    [Name]             VARCHAR (255)  NOT NULL,
    [SourceKey]        VARCHAR (255)  NOT NULL,
    [TextDesciption]   VARCHAR (1000) NULL,
    [change_operation] CHAR (1)       DEFAULT ((1)) NOT NULL
);








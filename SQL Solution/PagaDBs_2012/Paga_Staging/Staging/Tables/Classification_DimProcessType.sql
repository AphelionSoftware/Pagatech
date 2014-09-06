CREATE TABLE [Staging].[Classification_DimProcessType] (
    [DescriptionText]              VARCHAR (1000) NULL,
    [Name]                         VARCHAR (255)  NOT NULL,
    [SourceKey]                    VARCHAR (255)  NOT NULL,
    [DimProcessTypeGroupSourceKey] VARCHAR (255)  NOT NULL,
    [change_operation]             CHAR (1)       DEFAULT ((1)) NOT NULL
);








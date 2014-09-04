CREATE TABLE [Staging].[Finance_DimGLCode] (
    [SourceKey]            VARCHAR (255)  NOT NULL,
    [Name]                 VARCHAR (255)  NOT NULL,
    [Code]                 VARCHAR (50)   NOT NULL,
    [GLCodeGroupSourceKey] VARCHAR (255)  NOT NULL,
    [GLCode]               VARCHAR (255)  NULL,
    [Description]          VARCHAR (1000) NULL,
    [IsNormalDebit]        BIT            NULL
);




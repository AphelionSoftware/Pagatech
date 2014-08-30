CREATE TABLE [Staging].[Finance_DimGLCode] (
    [Name]                 VARCHAR (255)  NOT NULL,
    [Code]                 VARCHAR (50)   NOT NULL,
    [GLCodeGroupSourceKey] INT            NOT NULL,
    [GLCode]               VARCHAR (255)  NULL,
    [Description]          VARCHAR (1000) NULL,
    [IsNormalDebit]        BIT            NULL
);


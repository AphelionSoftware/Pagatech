CREATE TABLE [Errors].[Finance_DimGLCode] (
    [QueueID]              INT            NOT NULL,
    [SSISErrorCode]        INT            NOT NULL,
    [SSISErrorColumn]      INT            NOT NULL,
    [PackageName]          VARCHAR (255)  NOT NULL,
    [ErrorType]            VARCHAR (255)  NOT NULL,
    [Code]                 VARCHAR (50)   NOT NULL,
    [Description]          VARCHAR (1000) NULL,
    [GLCode]               VARCHAR (255)  NULL,
    [GLCodeGroupSourceKey] INT            NOT NULL,
    [Name]                 VARCHAR (255)  NOT NULL
);


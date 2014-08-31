CREATE TABLE [Errors].[Finance_DimGLHeading] (
    [QueueID]                  INT           NOT NULL,
    [SSISErrorCode]            INT           NOT NULL,
    [SSISErrorColumn]          INT           NOT NULL,
    [PackageName]              VARCHAR (255) NOT NULL,
    [ErrorType]                VARCHAR (255) NOT NULL,
    [ChartOfAccountsSourceKey] INT           NOT NULL,
    [Code]                     VARCHAR (50)  NOT NULL,
    [GLCodeRange]              VARCHAR (255) NULL,
    [Name]                     VARCHAR (255) NOT NULL
);


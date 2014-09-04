CREATE TABLE [Staging].[Finance_DimChartOfAccounts] (
    [SourceKey]        VARCHAR (255) NOT NULL,
    [Name]             VARCHAR (255) NOT NULL,
    [Code]             VARCHAR (50)  NOT NULL,
    [GLCodeRange]      VARCHAR (255) NULL,
    [change_operation] CHAR (1)      NULL
);




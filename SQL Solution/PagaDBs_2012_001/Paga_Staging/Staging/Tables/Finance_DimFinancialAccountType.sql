CREATE TABLE [Staging].[Finance_DimFinancialAccountType] (
    [Name]               VARCHAR (255)  NOT NULL,
    [SourceKey]          VARCHAR (255)  NOT NULL,
    [TextDesciption]     VARCHAR (1000) NULL,
    [DimGLCodeSourceKey] VARCHAR (255)  NOT NULL,
    [change_operation]   CHAR (1)       DEFAULT ((1)) NOT NULL
);










CREATE TABLE [Updates].[Finance_DimFinancialAccountType] (
    [SourceKey]      VARCHAR (255)  NOT NULL,
    [Name]           VARCHAR (255)  NOT NULL,
    [TextDesciption] VARCHAR (1000) NULL,
    [DimGLCodeID]    INT            NOT NULL
);


CREATE TABLE [Updates].[Finance_DimGLCode] (
    [SourceKey]           INT            NOT NULL,
    [Name]                VARCHAR (255)  NOT NULL,
    [DimGLCodeSubGroupID] INT            NOT NULL,
    [GLCode]              VARCHAR (255)  NULL,
    [TextDesciption]      VARCHAR (1000) NULL,
    [IsNormalDebit]       BIT            NULL
);


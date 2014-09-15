CREATE TABLE [Staging].[Finance_DimGLCode] (
    [GLCode]                     VARCHAR (255)  NULL,
    [IsNormalDebit]              BIT            NULL,
    [Name]                       VARCHAR (255)  NOT NULL,
    [SourceKey]                  VARCHAR (255)  NOT NULL,
    [TextDesciption]             VARCHAR (1000) NULL,
    [DimGLCodeSubGroupSourceKey] VARCHAR (255)  NOT NULL,
    [change_operation]           CHAR (1)       DEFAULT ((1)) NOT NULL
);














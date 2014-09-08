CREATE TABLE [Staging].[Finance_DimGLCode] (
    [GLCode]                     VARCHAR (255)  NULL,
    [Name]                       VARCHAR (255)  NOT NULL,
    [SourceKey]                  VARCHAR (255)  NOT NULL,
    [TextDescription]            VARCHAR (1000) NULL,
    [DimGLCodeSubGroupSourceKey] VARCHAR (255)  NOT NULL,
    [IsNormalDebit]              BIT            NULL,
    [change_operation]           CHAR (1)       DEFAULT ((1)) NOT NULL
);












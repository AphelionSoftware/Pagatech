CREATE TABLE [Staging].[Finance_DimGLCode] (
    [GLCode]                     VARCHAR (255)  NULL,
    [IsNormalDebit]              BIT            NULL,
    [Name]                       VARCHAR (255)  NOT NULL,
    [SourceKey]                  INT            NOT NULL,
    [TextDesciption]             VARCHAR (1000) NULL,
    [DimGLCodeSubGroupSourceKey] INT            NOT NULL
);












GO







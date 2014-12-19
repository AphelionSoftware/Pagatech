CREATE TABLE [Staging].[DimGLCode] (
    [DimGLCodeID]                INT            NULL,
    [DeltaHash]                  BIGINT         NULL,
    [GLCode]                     VARCHAR (255)  NULL,
    [IsNormalDebit]              BIT            NULL,
    [Name]                       VARCHAR (255)  NOT NULL,
    [SourceKey]                  VARCHAR (255)  NOT NULL,
    [SourceKeyHash]              BIGINT         NULL,
    [TextDesciption]             VARCHAR (1000) NULL,
    [DimGLCodeSubGroupSourceKey] VARCHAR (255)  NOT NULL
);


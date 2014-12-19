CREATE TABLE [Errors].[DimGLCode] (
    [QueueID]                    INT            NOT NULL,
    [SSISErrorCode]              INT            NOT NULL,
    [SSISErrorColumn]            INT            NOT NULL,
    [PackageName]                VARCHAR (255)  NOT NULL,
    [ErrorType]                  VARCHAR (255)  NOT NULL,
    [DimGLCodeID]                INT            NULL,
    [DeltaHash]                  BIGINT         NULL,
    [DimGLCodeSubGroupSourceKey] VARCHAR (255)  NOT NULL,
    [GLCode]                     VARCHAR (255)  NULL,
    [IsNormalDebit]              BIT            NULL,
    [Name]                       VARCHAR (255)  NOT NULL,
    [SourceKey]                  VARCHAR (255)  NOT NULL,
    [SourceKeyHash]              BIGINT         NULL,
    [TextDesciption]             VARCHAR (1000) NULL,
    [DimGLCodeSubGroupID]        INT            NULL
);




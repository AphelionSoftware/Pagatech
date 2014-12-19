CREATE TABLE [Errors].[DimFinancialAccountType] (
    [QueueID]                   INT            NOT NULL,
    [SSISErrorCode]             INT            NOT NULL,
    [SSISErrorColumn]           INT            NOT NULL,
    [PackageName]               VARCHAR (255)  NOT NULL,
    [ErrorType]                 VARCHAR (255)  NOT NULL,
    [DimFinancialAccountTypeID] INT            NULL,
    [DeltaHash]                 BIGINT         NULL,
    [DimGLCodeSourceKey]        VARCHAR (255)  NOT NULL,
    [Name]                      VARCHAR (255)  NOT NULL,
    [SourceKey]                 VARCHAR (255)  NOT NULL,
    [SourceKeyHash]             BIGINT         NULL,
    [TextDesciption]            VARCHAR (1000) NULL,
    [DimGLCodeID]               INT            NULL
);




CREATE TABLE [Errors].[Dim_GLCode] (
    [QueueID]               INT            NOT NULL,
    [SSISErrorCode]         INT            NOT NULL,
    [SSISErrorColumn]       INT            NOT NULL,
    [PackageName]           VARCHAR (255)  NOT NULL,
    [ErrorType]             VARCHAR (255)  NOT NULL,
    [Code]                  INT            NULL,
    [GLCodeGroup_SourceKey] INT            NOT NULL,
    [IsNormalDebit]         BIT            NULL,
    [Key]                   VARCHAR (100)  NULL,
    [Name]                  VARCHAR (100)  NULL,
    [SourceKey]             INT            NOT NULL,
    [TextDescription]       NVARCHAR (100) NULL,
    [DeltaHash]             BIGINT         NULL,
    [DimGLCodeID]           INT            NULL,
    [SourceKeyHash]         BIGINT         NULL,
    [DimGLCodeGroupID]      INT            NULL
);


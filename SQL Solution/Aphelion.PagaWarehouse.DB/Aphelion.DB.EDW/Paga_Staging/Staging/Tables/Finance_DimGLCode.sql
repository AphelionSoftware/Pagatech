CREATE TABLE [Staging].[Finance_DimGLCode] (
    [DimGLCodeID]                INT            NULL,
    [DeltaHash]                  BIGINT         NULL,
    [GLCode]                     VARCHAR (255)  NULL,
    [IsNormalDebit]              BIT            NULL,
    [Name]                       VARCHAR (255)  NOT NULL,
    [SourceKey]                  INT            NOT NULL,
    [SourceKeyHash]              BIGINT         NULL,
    [TextDesciption]             VARCHAR (1000) NULL,
    [DimGLCodeSubGroupSourceKey] INT            NOT NULL,
    [SYS_CHANGE_OPERATION]       CHAR (1)       DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]         BIGINT         DEFAULT ((0)) NOT NULL
);






GO
CREATE UNIQUE CLUSTERED INDEX [ix_Finance_DimGLCode]
    ON [Staging].[Finance_DimGLCode]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);


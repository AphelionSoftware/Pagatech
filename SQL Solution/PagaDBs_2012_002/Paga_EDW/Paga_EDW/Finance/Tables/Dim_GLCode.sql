CREATE TABLE [Finance].[DimGLCode] (
    [DimGLCodeID]      INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]        INT           NOT NULL,
    [Name]             VARCHAR (255) NULL,
    [DimGLCodeGroupID] INT           NOT NULL,
    [Code]             INT           NULL,
    [TextDescription]  VARCHAR (100) NULL,
    [IsNormalDebit]    BIT           NULL,
    [Key]              VARCHAR (100) NULL,
    [SourceKeyHash]    BIGINT        NULL,
    [DeltaHash]        BIGINT        NULL,
    [sys_CreatedBy]    VARCHAR (255) NOT NULL,
    [sys_CreatedOn]    DATETIME      NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255) NOT NULL,
    [sys_ModifiedOn]   DATETIME      NOT NULL,
    CONSTRAINT [pk_DimGLCode] PRIMARY KEY CLUSTERED ([DimGLCodeID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCode_SourceKey]
    ON [Finance].[DimGLCode]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode';


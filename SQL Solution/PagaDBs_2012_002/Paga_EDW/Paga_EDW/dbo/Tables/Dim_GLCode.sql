CREATE TABLE [dbo].[Dim_GLCode] (
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
    [sys_CreatedBy]    VARCHAR (255) CONSTRAINT [DF__Dim_GLCod__sys_C__6A3BB341] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]    DATETIME      CONSTRAINT [DF__Dim_GLCod__sys_C__6B2FD77A] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255) CONSTRAINT [DF__Dim_GLCod__sys_M__6C23FBB3] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]   DATETIME      CONSTRAINT [DF__Dim_GLCod__sys_M__6D181FEC] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimGLCode] PRIMARY KEY CLUSTERED ([DimGLCodeID] ASC),
    CONSTRAINT [fk_DimGLCode_DimGLCodeGroupID] FOREIGN KEY ([DimGLCodeGroupID]) REFERENCES [dbo].[Dim_GLCodeGroup] ([DimGLCodeGroupID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCode_SourceKey]
    ON [dbo].[Dim_GLCode]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Dim_GLCode';


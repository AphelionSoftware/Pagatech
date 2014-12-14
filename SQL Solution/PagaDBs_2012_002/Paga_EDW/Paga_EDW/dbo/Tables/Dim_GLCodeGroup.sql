CREATE TABLE [dbo].[Dim_GLCodeGroup] (
    [DimGLCodeGroupID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]        INT           NULL,
    [Name]             VARCHAR (255) NULL,
    [DimCOAID]         INT           NULL,
    [GLCodeRange]      VARCHAR (50)  NULL,
    [SourceKeyHash]    BIGINT        NULL,
    [DeltaHash]        BIGINT        NULL,
    [sys_CreatedBy]    VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]    DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]   DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimGLCodeGroup] PRIMARY KEY CLUSTERED ([DimGLCodeGroupID] ASC),
    CONSTRAINT [fk_DimGLCodeGroup_DimCOAID] FOREIGN KEY ([DimCOAID]) REFERENCES [dbo].[Dim_COA] ([DimCOAID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCodeGroup_SourceKey]
    ON [dbo].[Dim_GLCodeGroup]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Dim_GLCodeGroup';


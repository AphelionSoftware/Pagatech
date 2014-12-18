CREATE TABLE [Finance].[DimGLCodeGroup] (
    [DimGLCodeGroupID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]        INT           NULL,
    [Name]             VARCHAR (255) NULL,
    [DimCOAID]         INT           NULL,
    [GLCodeRange]      VARCHAR (50)  NULL,
    [SourceKeyHash]    BIGINT        NULL,
    [DeltaHash]        BIGINT        NULL,
    [sys_CreatedBy]    VARCHAR (255) NOT NULL,
    [sys_CreatedOn]    DATETIME      NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255) NOT NULL,
    [sys_ModifiedOn]   DATETIME      NOT NULL,
    CONSTRAINT [pk_DimGLCodeGroup] PRIMARY KEY CLUSTERED ([DimGLCodeGroupID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCodeGroup_SourceKey]
    ON [Finance].[DimGLCodeGroup]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup';


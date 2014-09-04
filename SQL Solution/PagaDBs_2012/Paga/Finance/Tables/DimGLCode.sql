CREATE TABLE [Finance].[DimGLCode] (
    [DimGLCodeID]      INT            NOT NULL,
    [SourceKey]        VARCHAR (255)  NOT NULL,
    [Name]             VARCHAR (255)  NOT NULL,
    [Code]             VARCHAR (50)   NOT NULL,
    [DimGLCodeGroupID] INT            NOT NULL,
    [GLCode]           VARCHAR (255)  NULL,
    [TextDesciption]   VARCHAR (1000) NULL,
    [IsNormalDebit]    BIT            NULL,
    [SourceKeyHash]    BIGINT         NOT NULL,
    [DeltaHash]        BIGINT         NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]   DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]    VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]    DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimGLCodeID] PRIMARY KEY CLUSTERED ([DimGLCodeID] ASC),
    CONSTRAINT [fk_DimGLCode_DimGLCodeGroupID] FOREIGN KEY ([DimGLCodeGroupID]) REFERENCES [Finance].[DimGLCodeGroup] ([DimGLCodeGroupID])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCode_SourceKey]
    ON [Finance].[DimGLCode]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimGLCodeGroupID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCode';


GO



GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'IsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'TextDesciption';


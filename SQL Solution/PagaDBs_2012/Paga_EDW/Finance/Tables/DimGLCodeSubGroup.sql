CREATE TABLE [Finance].[DimGLCodeSubGroup] (
    [DimGLCodeSubGroupID] INT           NOT NULL,
    [SourceKey]           VARCHAR (255) NOT NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [DimGLCodeGroupID]    INT           NOT NULL,
    [GLCodeRange]         VARCHAR (255) NULL,
    [SourceKeyHash]       BIGINT        NOT NULL,
    [DeltaHash]           BIGINT        NOT NULL,
    [sys_ModifiedBy]      VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]      DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimGLCodeSubGroupID] PRIMARY KEY CLUSTERED ([DimGLCodeSubGroupID] ASC),
    CONSTRAINT [fk_DimGLCodeSubGroup_DimChartofAccountsID] FOREIGN KEY ([DimGLCodeGroupID]) REFERENCES [Finance].[DimGLCodeGroup] ([DimGLCodeGroupID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCodeSubGroup_SourceKey]
    ON [Finance].[DimGLCodeSubGroup]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'AccountCodeGroupId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.AccountCodeGroup', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup', @level2type = N'COLUMN', @level2name = N'DeltaHash';


CREATE TABLE [Finance].[DimGLCode] (
    [DimGLCodeID]         INT            IDENTITY (1, 1) NOT NULL,
    [SourceKey]           INT  NOT NULL,
    [Name]                VARCHAR (255)  NOT NULL,
    [DimGLCodeSubGroupID] INT            NOT NULL,
    [GLCode]              VARCHAR (255)  NULL,
    [TextDesciption]      VARCHAR (1000) NULL,
    [IsNormalDebit]       BIT            NULL,
    [SourceKeyHash]       BIGINT         NULL,
    [DeltaHash]           BIGINT         NULL,
    [sys_ModifiedBy]      VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]      DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]       VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]       DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimGLCodeID] PRIMARY KEY CLUSTERED ([DimGLCodeID] ASC),
    CONSTRAINT [fk_DimGLCode_DimGLCodeSubGroupID] FOREIGN KEY ([DimGLCodeSubGroupID]) REFERENCES [Finance].[DimGLCodeSubGroup] ([DimGLCodeSubGroupID])
);






GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCode_SourceKey]
    ON [Finance].[DimGLCode]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2300', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode';




GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.AccountCode', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'3', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'AccountCodeId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.DimGLCodeSubGroupSourceKey, 
	base_query.name,
	base_query.TextDescription,
	base_query.GLCode,
	base_query.IsNormalDebit,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
FROM 
(
	SELECT
		SourceKey = AccountCodeId,
		DimGLCodeSubGroupSourceKey = AccountCodeGroupId,
		Name,
		TextDescription = CONVERT(VARCHAR(1000),[Description]),
		GLCode = Code,
		IsNormalDebit
	FROM dbo.AccountCode
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DeltaHash';


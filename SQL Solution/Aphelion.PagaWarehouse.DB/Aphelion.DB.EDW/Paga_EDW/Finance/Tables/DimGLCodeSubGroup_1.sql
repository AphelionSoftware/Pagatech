CREATE TABLE [Finance].[DimGLCodeSubGroup] (
    [DimGLCodeSubGroupID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]           INT           NOT NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [DimGLCodeGroupID]    INT           NOT NULL,
    [GLCodeRange]         VARCHAR (255) NULL,
    [sys_ModifiedBy]      VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]      DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]            BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_DimGLCodeSubGroupID] PRIMARY KEY CLUSTERED ([DimGLCodeSubGroupID] ASC),
    CONSTRAINT [fk_DimGLCodeSubGroup_DimChartofAccountsID] FOREIGN KEY ([DimGLCodeGroupID]) REFERENCES [Finance].[DimGLCodeGroup] ([DimGLCodeGroupID])
);








GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCodeSubGroup_SourceKey]
    ON [Finance].[DimGLCodeSubGroup]([SourceKey] ASC);


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.AccountCodeGroup', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2200', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'AccountCodeGroupId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SET NOCOUNT ON; DECLARE @COA AS TABLE ( 	SourceKey INT, 	Name VARCHAR(255), 	GLCodeRange VARCHAR(50), 	DimGLCodeGroupSourceKey INT );   WITH cte AS (  	SELECT  		AccountCodeGroupId, 		AccountCodeGroupStart, 		AccountCodeGroupEnd, 		Description, 		ParentAccountCodeGroupId =AccountCodeGroupId, 		1 AS COA_Level 	FROM [dbo].[AccountCodeGroup] 	WHERE  		ParentAccountCodeGroupId IS NULL 	UNION ALL 	SELECT  		sub_group.AccountCodeGroupId, 		sub_group.AccountCodeGroupStart, 		sub_group.AccountCodeGroupEnd, 		sub_group.Description, 		sub_group.ParentAccountCodeGroupId, 		coa.COA_Level +1 	FROM [dbo].[AccountCodeGroup] as sub_group 	INNER JOIN cte AS COA ON 		sub_group.ParentAccountCodeGroupId = coa.AccountCodeGroupID 	WHERE  		sub_Group.ParentAccountCodeGroupId IS NOT NULL )  	INSERT INTO @COA 	(	 		SourceKey, 		Name, 		GLCodeRange, 		DimGLCodeGroupSourceKey 	) 	SELECT 		SourceKey = AccountCodeGroupId, 		Name = [Description], 		GLCodeRange = CONVERT(VARCHAR(50), (AccountCodeGroupStart + '' - '' + AccountCodeGroupEnd)), 		ParentAccountCodeGroupId 	FROM cte 	WHERE COA_Level BETWEEN 0 AND 4  	SELECT  		SourceKey, 		base_query.name, 		base_query.GLCodeRange, 		base_query.DimGLCodeGroupSourceKey 	FROM @COA AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';




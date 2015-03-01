CREATE TABLE [Finance].[DimGLCodeGroup] (
    [DimGLCodeGroupID]     INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [DimChartofAccountsID] INT           NOT NULL,
    [GLCodeRange]          VARCHAR (255) NULL,
    [sys_ModifiedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]             BIT           DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimGLCodeGroupID] PRIMARY KEY CLUSTERED ([DimGLCodeGroupID] ASC),
    CONSTRAINT [fk_DimGLCodeGroup_DimChartofAccountsID] FOREIGN KEY ([DimChartofAccountsID]) REFERENCES [Finance].[DimChartOfAccounts] ([DimChartOfAccountsID])
);






















GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCodeGroup_SourceKey]
    ON [Finance].[DimGLCodeGroup]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2100', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup';




GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.AccountCodeGroup', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'AccountCodeGroupId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SET NOCOUNT ON; DECLARE @COA AS TABLE ( 	SourceKey INT, 	Name VARCHAR(255), 	GLCodeRange VARCHAR(50), 	DimChartOfAccountsSourceKey INT );   WITH cte AS (  	SELECT  		AccountCodeGroupId, 		AccountCodeGroupStart, 		AccountCodeGroupEnd, 		Description, 		ParentAccountCodeGroupId =AccountCodeGroupId, 		1 AS COA_Level 	FROM [dbo].[AccountCodeGroup] 	WHERE  		ParentAccountCodeGroupId IS NULL 	UNION ALL 	SELECT  		sub_group.AccountCodeGroupId, 		sub_group.AccountCodeGroupStart, 		sub_group.AccountCodeGroupEnd, 		sub_group.Description, 		sub_group.ParentAccountCodeGroupId, 		coa.COA_Level +1 	FROM [dbo].[AccountCodeGroup] as sub_group 	INNER JOIN cte AS COA ON 		sub_group.ParentAccountCodeGroupId = coa.AccountCodeGroupID 	WHERE  		sub_Group.ParentAccountCodeGroupId IS NOT NULL )  	INSERT INTO @COA 	(	 		SourceKey, 		Name, 		GLCodeRange, 		DimChartOfAccountsSourceKey 	) 	SELECT 		SourceKey = AccountCodeGroupId, 		Name = [Description], 		GLCodeRange = CONVERT(VARCHAR(50), (AccountCodeGroupStart + '' - '' + AccountCodeGroupEnd)), 		ParentAccountCodeGroupId 	FROM cte 	WHERE COA_Level BETWEEN 0 and 3  	SELECT  		ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, SYS_CHANGE_VERSION = ct.as_of_change_version, SourceKey , 		base_query.name, 		base_query.GLCodeRange, 		base_query.DimChartofAccountsSourceKey 	FROM @COA AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup';








GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET edw.SYS_CHANGE_OPERATION = stg.SYS_CHANGE_OPERATION,edw.SYS_CHANGE_VERSION = stg.SYS_CHANGE_VERSION, 
	edw.SourceKey = stg.SourceKey,edw.Name = stg.Name,edw.DimChartofAccountsID = stg.DimChartofAccountsID,edw.GLCodeRange = stg.GLCodeRange
	FROM Finance.DimGLCodeGroup AS edw
	INNER JOIN Paga_Staging.Updates.Finance_DimGLCodeGroup AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup';




CREATE TABLE [Finance].[DimChartOfAccounts] (
    [DimChartOfAccountsID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [GLCodeRange]          VARCHAR (255) NULL,
    [SourceKeyHash]        BIGINT        NULL,
    [DeltaHash]            BIGINT        NULL,
    [sys_ModifiedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimGLHeadingID] PRIMARY KEY CLUSTERED ([DimChartOfAccountsID] ASC)
);






GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimChartOfAccounts_SourceKey]
    ON [Finance].[DimChartOfAccounts]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.AccountCodeGroup', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimChartOfAccounts';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimChartOfAccounts';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'AccountCodeGroupId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimChartOfAccounts';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SET NOCOUNT ON;
DECLARE @COA AS TABLE
(
	SourceKey INT,
	Name VARCHAR(255),
	GLCodeRange VARCHAR(50)
);


WITH cte AS
(

	SELECT 
		AccountCodeGroupId,
		AccountCodeGroupStart,
		AccountCodeGroupEnd,
		Description,
		ParentAccountCodeGroupId,
		1 AS COA_Level
	FROM [PagaOpsDB].[dbo].[AccountCodeGroup]
	WHERE 
		ParentAccountCodeGroupId IS NULL
	UNION ALL
	SELECT 
		sub_group.AccountCodeGroupId,
		sub_group.AccountCodeGroupStart,
		sub_group.AccountCodeGroupEnd,
		sub_group.Description,
		sub_group.ParentAccountCodeGroupId,
		coa.COA_Level +1
	FROM [dbo].[AccountCodeGroup] as sub_group
	INNER JOIN cte AS COA ON
		sub_group.ParentAccountCodeGroupId = coa.AccountCodeGroupID
	WHERE 
		sub_Group.ParentAccountCodeGroupId IS NOT NULL
)

	INSERT INTO @COA
	(	
		SourceKey,
		Name,
		GLCodeRange
	)
	SELECT
		SourceKey = AccountCodeGroupId,
		Name = [Description],
		GLCodeRange = CONVERT(VARCHAR(50), (AccountCodeGroupStart + '' - '' + AccountCodeGroupEnd))
	FROM cte
	WHERE COA_Level = 2

	SELECT 
		SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
		base_query.name,
		base_query.GLCodeRange,
		change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
	FROM @COA AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimChartOfAccounts';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimChartOfAccounts';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimChartOfAccounts';


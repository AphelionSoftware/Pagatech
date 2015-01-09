SET NOCOUNT ON;
DECLARE @COA AS TABLE
(
	SourceKey INT,
	Name VARCHAR(255),
	GLCodeRange VARCHAR(50),
	DimGLCodeGroupSourceKey INT
);


WITH cte AS
(

	SELECT 
		AccountCodeGroupId,
		AccountCodeGroupStart,
		AccountCodeGroupEnd,
		Description,
		ParentAccountCodeGroupId =AccountCodeGroupId,
		1 AS COA_Level
	FROM [dbo].[AccountCodeGroup]
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
		GLCodeRange,
		DimGLCodeGroupSourceKey
	)
	SELECT
		SourceKey = AccountCodeGroupId,
		Name = [Description],
		GLCodeRange = CONVERT(VARCHAR(50), (AccountCodeGroupStart + ' - ' + AccountCodeGroupEnd)),
		ParentAccountCodeGroupId
	FROM cte
	WHERE COA_Level BETWEEN 0 AND 4

	SELECT 
		SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
		base_query.name,
		base_query.GLCodeRange,
		base_query.DimGLCodeGroupSourceKey,
		change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
	FROM @COA AS base_query

﻿CREATE TABLE [Finance].[DimGLCodeSubGroup] (
    [DimGLCodeSubGroupID]  INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [DimGLCodeGroupID]     INT           NOT NULL,
    [GLCodeRange]          VARCHAR (255) NULL,
    [sys_ModifiedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]             BIT           DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL,
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
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SET NOCOUNT ON; DECLARE @COA AS TABLE ( 	SourceKey INT, 	Name VARCHAR(255), 	GLCodeRange VARCHAR(50), 	DimGLCodeGroupSourceKey INT );   WITH cte AS (  	SELECT  		AccountCodeGroupId, 		AccountCodeGroupStart, 		AccountCodeGroupEnd, 		Description, 		ParentAccountCodeGroupId =AccountCodeGroupId, 		1 AS COA_Level 	FROM [dbo].[AccountCodeGroup] 	WHERE  		ParentAccountCodeGroupId IS NULL 	UNION ALL 	SELECT  		sub_group.AccountCodeGroupId, 		sub_group.AccountCodeGroupStart, 		sub_group.AccountCodeGroupEnd, 		sub_group.Description, 		sub_group.ParentAccountCodeGroupId, 		coa.COA_Level +1 	FROM [dbo].[AccountCodeGroup] as sub_group 	INNER JOIN cte AS COA ON 		sub_group.ParentAccountCodeGroupId = coa.AccountCodeGroupID 	WHERE  		sub_Group.ParentAccountCodeGroupId IS NOT NULL )  	INSERT INTO @COA 	(	 		SourceKey, 		Name, 		GLCodeRange, 		DimGLCodeGroupSourceKey 	) 	SELECT 		SourceKey = AccountCodeGroupId, 		Name = [Description], 		GLCodeRange = CONVERT(VARCHAR(50), (AccountCodeGroupStart + '' - '' + AccountCodeGroupEnd)), 		ParentAccountCodeGroupId 	FROM cte 	WHERE COA_Level BETWEEN 0 AND 4  	SELECT  		ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, SYS_CHANGE_VERSION = ct.as_of_change_version, SourceKey, 		base_query.name, 		base_query.GLCodeRange, 		base_query.DimGLCodeGroupSourceKey 	FROM @COA AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';








GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Finance].[DimGLCodeSubGroup] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Finance_DimGLCodeSubGroup AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.Name = Source.Name,Target.DimGLCodeGroupID = Source.DimGLCodeGroupID,Target.GLCodeRange = Source.GLCodeRange,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,Name,DimGLCodeGroupID,GLCodeRange,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.Name,Source.DimGLCodeGroupID,Source.GLCodeRange,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeSubGroup';






GO
CREATE NONCLUSTERED INDEX [ix_DimGLCodeSubGroup_ChangeVersion]
    ON [Finance].[DimGLCodeSubGroup]([SYS_CHANGE_VERSION] ASC);


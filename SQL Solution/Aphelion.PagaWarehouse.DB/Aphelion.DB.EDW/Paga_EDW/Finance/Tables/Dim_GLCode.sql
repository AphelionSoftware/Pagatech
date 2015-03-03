CREATE TABLE [Finance].[DimGLCode] (
    [DimGLCodeID]          INT            IDENTITY (1, 1) NOT NULL,
    [SourceKey]            INT            NOT NULL,
    [Name]                 VARCHAR (255)  NOT NULL,
    [DimGLCodeSubGroupID]  INT            NOT NULL,
    [GLCode]               VARCHAR (255)  NULL,
    [TextDesciption]       VARCHAR (1000) NULL,
    [IsNormalDebit]        BIT            NULL,
    [sys_ModifiedBy]       VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]       DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]        VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]        DATETIME       DEFAULT (getdate()) NOT NULL,
    [IsActive]             BIT            DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       DEFAULT ('I') NOT NULL,
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
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, SYS_CHANGE_VERSION = ct.as_of_change_version, SourceKey , 	base_query.DimGLCodeSubGroupSourceKey,  	base_query.name, 	base_query.TextDescription, 	base_query.GLCode, 	base_query.IsNormalDebit FROM  ( 	SELECT 		SourceKey = AccountCodeId, 		DimGLCodeSubGroupSourceKey = AccountCodeGroupId, 		Name, 		TextDescription = CONVERT(VARCHAR(1000),[Description]), 		GLCode = Code, 		IsNormalDebit 	FROM dbo.AccountCode ) AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode';








GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Finance].[DimGLCode] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Finance_DimGLCode AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.Name = Source.Name,Target.DimGLCodeSubGroupID = Source.DimGLCodeSubGroupID,Target.GLCode = Source.GLCode,Target.TextDesciption = Source.TextDesciption,Target.IsNormalDebit = Source.IsNormalDebit,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,Name,DimGLCodeSubGroupID,GLCode,TextDesciption,IsNormalDebit,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.Name,Source.DimGLCodeSubGroupID,Source.GLCode,Source.TextDesciption,Source.IsNormalDebit,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode';






GO
CREATE NONCLUSTERED INDEX [ix_DimGLCode_ChangeVersion]
    ON [Finance].[DimGLCode]([SYS_CHANGE_VERSION] ASC);


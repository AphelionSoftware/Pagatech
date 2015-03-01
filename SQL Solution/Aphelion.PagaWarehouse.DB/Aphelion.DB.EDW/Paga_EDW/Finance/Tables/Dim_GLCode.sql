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
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET edw.SYS_CHANGE_OPERATION = stg.SYS_CHANGE_OPERATION,edw.SYS_CHANGE_VERSION = stg.SYS_CHANGE_VERSION, 
	edw.SourceKey = stg.SourceKey,edw.Name = stg.Name,edw.DimGLCodeSubGroupID = stg.DimGLCodeSubGroupID,edw.GLCode = stg.GLCode,edw.TextDesciption = stg.TextDesciption,edw.IsNormalDebit = stg.IsNormalDebit
	FROM Finance.DimGLCode AS edw
	INNER JOIN Paga_Staging.Updates.Finance_DimGLCode AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCode';




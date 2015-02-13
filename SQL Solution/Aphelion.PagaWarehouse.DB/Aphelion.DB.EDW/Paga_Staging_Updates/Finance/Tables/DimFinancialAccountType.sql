CREATE TABLE [Finance].[DimFinancialAccountType] (
    [DimFinancialAccountTypeID] INT            IDENTITY (1, 1) NOT NULL,
    [SourceKey]                 VARCHAR (255)  NOT NULL,
    [Name]                      VARCHAR (255)  NOT NULL,
    [TextDesciption]            VARCHAR (1000) NULL,
    [DimGLCodeID]               INT            NOT NULL,
    [sys_ModifiedBy]            VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]            DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]             VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]             DATETIME       DEFAULT (getdate()) NOT NULL,
    [IsActive]                  BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_DimFinancialAccountType] PRIMARY KEY CLUSTERED ([DimFinancialAccountTypeID] ASC),
    CONSTRAINT [FK_DimFinancialAccountType_DimGLCode] FOREIGN KEY ([DimGLCodeID]) REFERENCES [Finance].[DimGLCode] ([DimGLCodeID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccountType_SourceKey]
    ON [Finance].[DimFinancialAccountType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, SYS_CHANGE_VERSION = ct.as_of_change_version, SourceKey , 	base_query.name, 	base_query.TextDescription, 	base_query.DimGLCodeSourceKey FROM  ( 	SELECT DISTINCT 		SourceKey = fat.FinancialAccountTypeId, 		Name = fat.FinancialAccountTypeId, 		TextDescription = [Description], 		DimGLCodeSourceKey = fa.AccountCodeId 	FROM dbo.FinancialAccountType as fat 	INNER JOIN dbo.FinancialAccount AS fa ON 		fat.FinancialAccountTypeId = fa.FinancialAccountTypeId ) AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountType';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialAccountTypeId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountType';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2400', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountType';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'5', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountType';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialAccountType', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountType';


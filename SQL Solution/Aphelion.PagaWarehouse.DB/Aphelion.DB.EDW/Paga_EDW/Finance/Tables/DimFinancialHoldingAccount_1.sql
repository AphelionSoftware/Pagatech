CREATE TABLE [Finance].[DimFinancialHoldingAccount] (
    [DimFinancialHoldingAccountID] INT             IDENTITY (1, 1) NOT NULL,
    [SourceKey]                    INT             NOT NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [AccountNumber]                VARCHAR (20)    NULL,
    [RestrictedBalance]            DECIMAL (18, 2) NULL,
    [OpeningBalance]               DECIMAL (18, 2) NULL,
    [TotalBalance]                 DECIMAL (18, 2) NULL,
    [sys_ModifiedBy]               VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]               DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                DATETIME        DEFAULT (getdate()) NOT NULL,
    [IsActive]                     BIT             DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]           BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]         CHAR (1)        DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimFinancialHoldingAccountID] PRIMARY KEY CLUSTERED ([DimFinancialHoldingAccountID] ASC)
);






















GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialHoldingAccount_SourceKey]
    ON [Finance].[DimFinancialHoldingAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialAccount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialAccountId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, SYS_CHANGE_VERSION = ct.as_of_change_version, SourceKey, 	base_query.AccountNumber, 	base_query.Name, 	base_query.OpeningBalance, 	base_query.RestrictedBalance, 	base_query.TotalBalance FROM ( 	SELECT  		SourceKey = fa.FinancialAccountId, 		AccountNumber = CONVERT(VARCHAR(20), fa.AccountNumber),					Name = CONVERT(VARCHAR(20), fa.AccountNumber), 		fa.OpeningBalance, 		fa.RestrictedBalance, 		fa.TotalBalance 	FROM dbo.FinancialAccount AS fa  	WHERE  		fa.HoldingFinancialAccountId IS NULL ) AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';










GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Finance].[DimFinancialHoldingAccount] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Finance_DimFinancialHoldingAccount AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.Name = Source.Name,Target.AccountNumber = Source.AccountNumber,Target.RestrictedBalance = Source.RestrictedBalance,Target.OpeningBalance = Source.OpeningBalance,Target.TotalBalance = Source.TotalBalance,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,Name,AccountNumber,RestrictedBalance,OpeningBalance,TotalBalance,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.Name,Source.AccountNumber,Source.RestrictedBalance,Source.OpeningBalance,Source.TotalBalance,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';






GO
CREATE NONCLUSTERED INDEX [ix_DimFinancialHoldingAccount_ChangeVersion]
    ON [Finance].[DimFinancialHoldingAccount]([SYS_CHANGE_VERSION] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_delete]
    ON [Finance].[DimFinancialHoldingAccount]([SYS_CHANGE_OPERATION] ASC, [SYS_CHANGE_VERSION] ASC)
    INCLUDE([DimFinancialHoldingAccountID]);


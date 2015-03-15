CREATE TABLE [Finance].[FactGLTransaction] (
    [FactGLTxID]            INT             IDENTITY (1, 1) NOT NULL,
    [SourceKey]             INT             NOT NULL,
    [DimGLCodeID]           INT             NULL,
    [TextDescription]       NVARCHAR (200)  NULL,
    [DimFinancialAccountID] INT             CONSTRAINT [DF_FactGLTransaction_DimFinancialAccountID] DEFAULT ((-1)) NULL,
    [FactFinancialTxID]     INT             NULL,
    [TransactionLineNumber] INT             NULL,
    [CreditAmount]          DECIMAL (18, 2) NULL,
    [DebitAmount]           DECIMAL (18, 2) NULL,
    [Movement]              DECIMAL (19, 2) NULL,
    [sys_CreatedBy]         VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]         DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]        VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]        DATETIME        DEFAULT (getdate()) NOT NULL,
    [IsActive]              BIT             DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]    BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]  CHAR (1)        DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_FactGLTx] PRIMARY KEY CLUSTERED ([FactGLTxID] ASC),
    CONSTRAINT [fk_FactGLTransaction_DimFinancialAccountID] FOREIGN KEY ([DimFinancialAccountID]) REFERENCES [Finance].[DimFinancialAccount] ([DimFinancialAccountID]),
    CONSTRAINT [fk_FactGLTransaction_DimGLCodeID] FOREIGN KEY ([DimGLCodeID]) REFERENCES [Finance].[DimGLCode] ([DimGLCodeID]),
    CONSTRAINT [fk_FactGLTransaction_FactFinancialTxID] FOREIGN KEY ([FactFinancialTxID]) REFERENCES [Finance].[FactFinancialTransaction] ([FactFinancialTxID])
);


























GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactGLTransaction_SourceKey]
    ON [Finance].[FactGLTransaction]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'3300', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactGLTransaction';








GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialTransactionItem', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactGLTransaction';




GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'11', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactGLTransaction';




GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialTransactionItemId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactGLTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'PlaceHolder', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactGLTransaction';




GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Finance].[FactGLTransaction] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Finance_FactGLTransaction AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.DimGLCodeID = Source.DimGLCodeID,Target.TextDescription = Source.TextDescription,Target.DimFinancialAccountID = Source.DimFinancialAccountID,Target.FactFinancialTxID = Source.FactFinancialTxID,Target.TransactionLineNumber = Source.TransactionLineNumber,Target.CreditAmount = Source.CreditAmount,Target.DebitAmount = Source.DebitAmount,Target.Movement = Source.Movement,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,DimGLCodeID,TextDescription,DimFinancialAccountID,FactFinancialTxID,TransactionLineNumber,CreditAmount,DebitAmount,Movement,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.DimGLCodeID,Source.TextDescription,Source.DimFinancialAccountID,Source.FactFinancialTxID,Source.TransactionLineNumber,Source.CreditAmount,Source.DebitAmount,Source.Movement,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactGLTransaction';






GO
CREATE NONCLUSTERED INDEX [ix_FactGLTransaction_FinancialAccountID]
    ON [Finance].[FactGLTransaction]([DimFinancialAccountID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactGLTransaction_ChangeVersion]
    ON [Finance].[FactGLTransaction]([SYS_CHANGE_VERSION] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactGLTransaction_IsActive]
    ON [Finance].[FactGLTransaction]([IsActive] ASC)
    INCLUDE([SourceKey], [DimGLCodeID], [FactFinancialTxID]) WHERE ([IsActive]=(1));


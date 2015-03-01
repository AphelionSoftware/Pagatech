﻿CREATE TABLE [Finance].[FactGLTransaction] (
    [FactGLTxID]            INT             IDENTITY (1, 1) NOT NULL,
    [SourceKey]             INT             NOT NULL,
    [DimGLCodeID]           INT             NULL,
    [TextDescription]       NVARCHAR (200)  NULL,
    [DimFinancialAccountID] INT             NULL,
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
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET edw.SYS_CHANGE_OPERATION = stg.SYS_CHANGE_OPERATION,edw.SYS_CHANGE_VERSION = stg.SYS_CHANGE_VERSION, 
	edw.SourceKey = stg.SourceKey,edw.DimGLCodeID = stg.DimGLCodeID,edw.TextDescription = stg.TextDescription,edw.DimFinancialAccountID = stg.DimFinancialAccountID,edw.FactFinancialTxID = stg.FactFinancialTxID,edw.TransactionLineNumber = stg.TransactionLineNumber,edw.CreditAmount = stg.CreditAmount,edw.DebitAmount = stg.DebitAmount,edw.Movement = stg.Movement
	FROM Finance.FactGLTransaction AS edw
	INNER JOIN Paga_Staging.Updates.Finance_FactGLTransaction AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactGLTransaction';




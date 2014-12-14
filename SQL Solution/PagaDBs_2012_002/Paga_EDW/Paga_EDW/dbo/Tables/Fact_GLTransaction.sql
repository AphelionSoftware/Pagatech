CREATE TABLE [dbo].[Fact_GLTransaction] (
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
    [SourceKeyHash]         BIGINT          NULL,
    [DeltaHash]             BIGINT          NULL,
    [sys_CreatedBy]         VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]         DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]        VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]        DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_FactGLTx] PRIMARY KEY CLUSTERED ([FactGLTxID] ASC),
    CONSTRAINT [fk_Fact_GLTransaction_DimFinancialAccountID] FOREIGN KEY ([DimFinancialAccountID]) REFERENCES [dbo].[Dim_FinancialAccount] ([DimFinancialAccountID]),
    CONSTRAINT [fk_Fact_GLTransaction_DimGLCodeID] FOREIGN KEY ([DimGLCodeID]) REFERENCES [dbo].[Dim_GLCode] ([DimGLCodeID]),
    CONSTRAINT [fk_Fact_GLTransaction_FactFinancialTxID] FOREIGN KEY ([FactFinancialTxID]) REFERENCES [dbo].[Fact_FinancialTransaction] ([FactFinancialTxID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactGLTransaction_SourceKey]
    ON [dbo].[Fact_GLTransaction]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Fact_GLTransaction';


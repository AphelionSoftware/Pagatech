CREATE TABLE [Finance].[FactMonthlyGLSnapshot] (
    [FactMonthlyGLSnapshotID] INT             IDENTITY (1, 1) NOT NULL,
    [DimFinancialTxTypeID]    INT             NULL,
    [DimFinancialAccountID]   INT             NULL,
    [DimAsOfDateID]           INT             NULL,
    [DimCityID]               INT             NULL,
    [MovementDirection]       DECIMAL (18, 2) NULL,
    [AggregatedDebitAmount]   DECIMAL (18, 2) NULL,
    [AggregatedCreditAmount]  DECIMAL (18, 2) NULL,
    [DebitTransactionCount]   DECIMAL (18, 2) NULL,
    [CreditTransactionCount]  DECIMAL (18, 2) NULL,
    [OpeningBalance]          DECIMAL (18, 2) NULL,
    [ClosingBalance]          DECIMAL (18, 2) NULL,
    CONSTRAINT [pk_FactMonthlyGLSnapshotID] PRIMARY KEY CLUSTERED ([FactMonthlyGLSnapshotID] ASC),
    CONSTRAINT [fk_FactMonthlyGLSnapshot_DimAsOfDateID] FOREIGN KEY ([DimAsOfDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactMonthlyGLSnapshot_DimCityID] FOREIGN KEY ([DimCityID]) REFERENCES [Location].[DimCity] ([DimCityID]),
    CONSTRAINT [fk_FactMonthlyGLSnapshot_DimFinancialAccountID] FOREIGN KEY ([DimFinancialAccountID]) REFERENCES [Finance].[DimFinancialAccount] ([DimFinancialAccountID]),
    CONSTRAINT [fk_FactMonthlyGLSnapshot_DimFinancialTxTypeID] FOREIGN KEY ([DimFinancialTxTypeID]) REFERENCES [Classification].[DimFinancialTxType] ([DimFinancialTxTypeID])
);












GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot';


GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'6', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2900', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot';


CREATE TABLE [Finance].[FactMonthlyGLSnapshot] (
    [FactMonthlyGLSnapshotID]       INT             NOT NULL,
    [DimFinancialTransactionTypeID] INT             NULL,
    [DimFinancialAccountID]         INT             NULL,
    [DimAsOfDateID]                 INT             NULL,
    [DimCityID]                     INT             NULL,
    [MovementDirection]             DECIMAL (18, 2) NULL,
    [AggregatedDebitAmount]         DECIMAL (18, 2) NULL,
    [AggregatedCreditAmount]        DECIMAL (18, 2) NULL,
    [DebitTransactionCount]         DECIMAL (18, 2) NULL,
    [CreditTransactionCount]        DECIMAL (18, 2) NULL,
    [OpeningBalance]                DECIMAL (18, 2) NULL,
    [ClosingBalance]                DECIMAL (18, 2) NULL,
    CONSTRAINT [pk_FactMonthlyGLSnapshotID] PRIMARY KEY CLUSTERED ([FactMonthlyGLSnapshotID] ASC),
    CONSTRAINT [fk_FactMonthlyGLSnapshot_DimAsOfDateID] FOREIGN KEY ([DimAsOfDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactMonthlyGLSnapshot_DimCityID] FOREIGN KEY ([DimCityID]) REFERENCES [Location].[DimCity] ([DimCityID]),
    CONSTRAINT [fk_FactMonthlyGLSnapshot_DimFinancialAccountID] FOREIGN KEY ([DimFinancialAccountID]) REFERENCES [Finance].[DimFinancialAccount] ([DimFinancialAccountID]),
    CONSTRAINT [fk_FactMonthlyGLSnapshot_DimFinancialTransactionTypeID] FOREIGN KEY ([DimFinancialTransactionTypeID]) REFERENCES [Classification].[DimFinancialTransactionType] ([DimFinancialTransactionTypeID])
);


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimAsOfDateID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MovementDirection', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AggregatedDebitAmount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AggregatedCreditAmount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DebitTransactionCount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CreditTransactionCount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ClosingBalance', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


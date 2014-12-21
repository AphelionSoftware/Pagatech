CREATE TABLE [Staging].[Finance_FactDailyGLSnapshot] (
    [FinancialTransactionTypeSourceKey] INT             NULL,
    [FinancialAccountSourceKey]         INT             NULL,
    [DimAsOfDateID]                     INT             NULL,
    [CitySourceKey]                     INT             NULL,
    [MovementDirection]                 DECIMAL (18, 2) NULL,
    [AggregatedDebitAmount]             DECIMAL (18, 2) NULL,
    [AggregatedCreditAmount]            DECIMAL (18, 2) NULL,
    [DebitTransactionCount]             DECIMAL (18, 2) NULL,
    [CreditTransactionCount]            DECIMAL (18, 2) NULL,
    [OpeningBalance]                    DECIMAL (18, 2) NULL,
    [ClosingBalance]                    DECIMAL (18, 2) NULL
);




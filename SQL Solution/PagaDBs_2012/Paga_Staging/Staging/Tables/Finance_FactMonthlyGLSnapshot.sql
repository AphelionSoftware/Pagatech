CREATE TABLE [Staging].[Finance_FactMonthlyGLSnapshot] (
    [FinancialTransactionTypeSourceKey] VARCHAR (255)   NULL,
    [FinancialAccountSourceKey]         VARCHAR (255)   NULL,
    [DimAsOfDateID]                     INT             NULL,
    [CitySourceKey]                     VARCHAR (255)   NULL,
    [MovementDirection]                 DECIMAL (18, 2) NULL,
    [AggregatedDebitAmount]             DECIMAL (18, 2) NULL,
    [AggregatedCreditAmount]            DECIMAL (18, 2) NULL,
    [DebitTransactionCount]             DECIMAL (18, 2) NULL,
    [CreditTransactionCount]            DECIMAL (18, 2) NULL,
    [OpeningBalance]                    DECIMAL (18, 2) NULL,
    [ClosingBalance]                    DECIMAL (18, 2) NULL
);




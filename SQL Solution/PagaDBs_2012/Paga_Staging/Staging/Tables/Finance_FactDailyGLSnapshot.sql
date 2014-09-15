CREATE TABLE [Staging].[Finance_FactDailyGLSnapshot] (
    [AggregatedCreditAmount]               DECIMAL (18, 2) NULL,
    [AggregatedDebitAmount]                DECIMAL (18, 2) NULL,
    [ClosingBalance]                       DECIMAL (18, 2) NULL,
    [CreditTransactionCount]               DECIMAL (18, 2) NULL,
    [DebitTransactionCount]                DECIMAL (18, 2) NULL,
    [MovementDirection]                    DECIMAL (18, 2) NULL,
    [OpeningBalance]                       DECIMAL (18, 2) NULL,
    [DimAsOfDateID]                        INT             NULL,
    [DimCitySourceKey]                     VARCHAR (255)   NULL,
    [DimFinancialAccountSourceKey]         VARCHAR (255)   NULL,
    [DimFinancialTxTypeSourceKey] VARCHAR (255)   NULL,
    [change_operation]                     CHAR (1)        DEFAULT ((1)) NOT NULL
);








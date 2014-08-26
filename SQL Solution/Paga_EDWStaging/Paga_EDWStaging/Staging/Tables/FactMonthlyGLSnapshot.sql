CREATE TABLE [Staging].[FactMonthlyGLSnapshot] (
    [FactMonthlyGLSnapshotID]           INT             NULL,
    [AggregatedCreditAmount]            DECIMAL (18, 2) NULL,
    [AggregatedDebitAmount]             DECIMAL (18, 2) NULL,
    [ClosingBalance]                    DECIMAL (18, 2) NULL,
    [CreditTransactionCount]            DECIMAL (18, 2) NULL,
    [DebitTransactionCount]             DECIMAL (18, 2) NULL,
    [MovementDirection]                 DECIMAL (18, 2) NULL,
    [OpeningBalance]                    DECIMAL (18, 2) NULL,
    [RunID]                             INT             NOT NULL,
    [DateSourceKey]                     VARCHAR (255)   NULL,
    [CitySourceKey]                     VARCHAR (255)   NULL,
    [FinancialAccountSourceKey]         VARCHAR (255)   NULL,
    [FinancialTransactionTypeSourceKey] VARCHAR (255)   NULL,
    [OrganizationUnitLevel5SourceKey]   VARCHAR (255)   NULL
);


CREATE TABLE [Errors].[Finance_FactDailyGLSnapshot] (
    [QueueID]                   INT             NOT NULL,
    [SSISErrorCode]             INT             NOT NULL,
    [SSISErrorColumn]           INT             NOT NULL,
    [PackageName]               VARCHAR (255)   NOT NULL,
    [ErrorType]                 VARCHAR (255)   NOT NULL,
    [AggregatedCreditAmount]    DECIMAL (18, 2) NULL,
    [AggregatedDebitAmount]     DECIMAL (18, 2) NULL,
    [CitySourceKey]             INT             NULL,
    [ClosingBalance]            DECIMAL (18, 2) NULL,
    [CreditTransactionCount]    DECIMAL (18, 2) NULL,
    [DebitTransactionCount]     DECIMAL (18, 2) NULL,
    [DimAsOfDateID]             INT             NULL,
    [FinancialAccountSourceKey] INT             NULL,
    [MovementDirection]         DECIMAL (18, 2) NULL,
    [OpeningBalance]            DECIMAL (18, 2) NULL
);


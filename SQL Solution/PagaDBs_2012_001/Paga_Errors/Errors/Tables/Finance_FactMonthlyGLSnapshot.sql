CREATE TABLE [Errors].[Finance_FactMonthlyGLSnapshot] (
    [QueueID]                      INT             NOT NULL,
    [SSISErrorCode]                INT             NOT NULL,
    [SSISErrorColumn]              INT             NOT NULL,
    [PackageName]                  VARCHAR (255)   NOT NULL,
    [ErrorType]                    VARCHAR (255)   NOT NULL,
    [AggregatedCreditAmount]       DECIMAL (18, 2) NULL,
    [AggregatedDebitAmount]        DECIMAL (18, 2) NULL,
    [change_operation]             CHAR (1)        NOT NULL,
    [ClosingBalance]               DECIMAL (18, 2) NULL,
    [CreditTransactionCount]       DECIMAL (18, 2) NULL,
    [DebitTransactionCount]        DECIMAL (18, 2) NULL,
    [DimAsOfDateID]                INT             NULL,
    [DimCitySourceKey]             VARCHAR (255)   NULL,
    [DimFinancialAccountSourceKey] VARCHAR (255)   NULL,
    [DimFinancialTxTypeSourceKey]  VARCHAR (255)   NULL,
    [MovementDirection]            DECIMAL (18, 2) NULL,
    [OpeningBalance]               DECIMAL (18, 2) NULL
);


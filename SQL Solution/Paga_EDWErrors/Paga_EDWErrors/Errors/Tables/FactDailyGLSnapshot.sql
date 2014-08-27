CREATE TABLE [Errors].[FactDailyGLSnapshot] (
    [QueueID]                       INT             NOT NULL,
    [ErrorCode]                     INT             NOT NULL,
    [ErrorColumn]                   INT             NOT NULL,
    [PackageName]                   VARCHAR (255)   NOT NULL,
    [FactDailyGLSnapshotID]         INT             NULL,
    [AggregatedCreditAmount]        DECIMAL (18, 2) NULL,
    [AggregatedDebitAmount]         DECIMAL (18, 2) NULL,
    [ClosingBalance]                DECIMAL (18, 2) NULL,
    [CreditTransactionCount]        DECIMAL (18, 2) NULL,
    [DebitTransactionCount]         DECIMAL (18, 2) NULL,
    [DimAsOfDateID]                 INT             NULL,
    [DimCityID]                     INT             NULL,
    [DimFinancialAccountID]         INT             NULL,
    [DimFinancialTransactionTypeID] INT             NULL,
    [DimOrganizationUnitLevel5ID]   INT             NULL,
    [MovementDirection]             DECIMAL (18, 2) NULL,
    [OpeningBalance]                DECIMAL (18, 2) NULL
);


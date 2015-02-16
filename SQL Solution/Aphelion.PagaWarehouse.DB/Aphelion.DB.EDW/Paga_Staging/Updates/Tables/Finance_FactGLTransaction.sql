CREATE TABLE [Updates].[Finance_FactGLTransaction] (
    [SourceKey]             INT             NOT NULL,
    [DimGLCodeID]           INT             NULL,
    [TextDescription]       NVARCHAR (200)  NULL,
    [DimFinancialAccountID] INT             NULL,
    [FactFinancialTxID]     INT             NULL,
    [TransactionLineNumber] INT             NULL,
    [CreditAmount]          DECIMAL (18, 2) NULL,
    [DebitAmount]           DECIMAL (18, 2) NULL,
    [Movement]              DECIMAL (19, 2) NULL
);


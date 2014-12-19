CREATE TABLE [Errors].[FactGLTransaction] (
    [QueueID]                           INT             NOT NULL,
    [SSISErrorCode]                     INT             NOT NULL,
    [SSISErrorColumn]                   INT             NOT NULL,
    [PackageName]                       VARCHAR (255)   NOT NULL,
    [ErrorType]                         VARCHAR (255)   NOT NULL,
    [CreditAmount]                      DECIMAL (18, 2) NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [DeltaHash]                         BIGINT          NULL,
    [DimFinancialAccountSourceKey]      VARCHAR (255)   NULL,
    [DimGLCodeSourceKey]                VARCHAR (255)   NULL,
    [FactFinancialTransactionSourceKey] INT             NULL,
    [FactGLTxID]                        INT             NULL,
    [Movement]                          DECIMAL (19, 2) NULL,
    [SourceKey]                         INT             NOT NULL,
    [SourceKeyHash]                     BIGINT          NULL,
    [TextDescription]                   NVARCHAR (200)  NULL,
    [TransactionLineNumber]             INT             NULL,
    [DimFinancialAccountID]             INT             NULL,
    [DimGLCodeID]                       INT             NULL,
    [FactFinancialTxID]                 INT             NULL
);




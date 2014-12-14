CREATE TABLE [Errors].[Fact_GLTransaction] (
    [QueueID]                    INT             NOT NULL,
    [SSISErrorCode]              INT             NOT NULL,
    [SSISErrorColumn]            INT             NOT NULL,
    [PackageName]                VARCHAR (255)   NOT NULL,
    [ErrorType]                  VARCHAR (255)   NOT NULL,
    [AccountCode_SourceKey]      INT             NULL,
    [CreditAmount]               DECIMAL (18, 2) NULL,
    [DebitAmount]                DECIMAL (18, 2) NULL,
    [FinancialAccount_SourceKey] INT             NULL,
    [FinancialTx_SourceKey]      INT             NULL,
    [Movement]                   DECIMAL (19, 2) NULL,
    [SourceKey]                  INT             NOT NULL,
    [TextDescription]            NVARCHAR (200)  NULL,
    [TransactionLineNumber]      INT             NULL,
    [DeltaHash]                  BIGINT          NULL,
    [FactGLTxID]                 INT             NULL,
    [SourceKeyHash]              BIGINT          NULL,
    [DimFinancialAccountID]      INT             NULL,
    [DimGLCodeID]                INT             NULL,
    [FactFinancialTxID]          INT             NULL
);


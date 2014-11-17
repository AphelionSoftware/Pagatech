CREATE TABLE [Staging].[NIBBS_GL_Detail] (
    [FinancialTransactionId]     INT             NOT NULL,
    [FinancialTransactionItemId] INT             NOT NULL,
    [FinancialTransactionTypeId] VARCHAR (50)    NULL,
    [Amount]                     DECIMAL (18, 2) NULL,
    [ExternalReferenceNumber]    NVARCHAR (50)   NULL,
    [Fee]                        DECIMAL (18, 2) NULL,
    [ShortCode]                  VARCHAR (10)    NULL,
    [TransactionDate]            DATETIME        NULL,
    [ReferenceNumber]            VARCHAR (50)    NULL,
    [AccountCode]                INT             NULL,
    [CreditAmount]               DECIMAL (18, 2) NULL,
    [DebitAmount]                DECIMAL (18, 2) NULL,
    [FinancialAccountTypeId]     VARCHAR (70)    NULL,
    [Cancelled]                  INT             NULL,
    [__Reverses]                 INT             NULL,
    [__ReversedBy]               INT             NULL,
    [AccountHolderId]            INT             NULL,
    [BankAccountId]              INT             NULL,
    [UserId]                     INT             NULL,
    [TransactionLineNumber]      INT             NULL
);


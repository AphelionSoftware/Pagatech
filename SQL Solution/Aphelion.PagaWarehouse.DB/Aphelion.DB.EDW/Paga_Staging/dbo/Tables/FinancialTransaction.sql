CREATE TABLE [dbo].[FinancialTransaction] (
    [FinancialTransactionId]        INT             NOT NULL,
    [Amount]                        DECIMAL (18, 2) NOT NULL,
    [CreatedDate]                   DATETIME        NOT NULL,
    [Description]                   NVARCHAR (200)  NOT NULL,
    [ExternalReferenceNumber]       VARCHAR (100)   NULL,
    [Fee]                           DECIMAL (18, 2) NULL,
    [FinancialTransactionTypeId]    VARCHAR (50)    NOT NULL,
    [ReferenceNumber]               VARCHAR (50)    NULL,
    [ShortCode]                     VARCHAR (10)    NOT NULL,
    [TransactionDate]               DATETIME        NOT NULL,
    [UpdatedDate]                   DATETIME        NULL,
    [UserId]                        INT             NULL,
    [ProcessId]                     INT             NULL,
    [ReversedBy]                    INT             NULL,
    [Reverses]                      INT             NULL,
    [CurrencyId]                    VARCHAR (50)    NULL,
    [ExchangeRate]                  DECIMAL (16, 4) NULL,
    [__Reverses]                    INT             NULL,
    [__ReversedBy]                  INT             NULL,
    [ForeignCurrencyAmount]         DECIMAL (18, 2) NULL,
    [FinancialTransactionSubTypeId] VARCHAR (50)    NULL,
    [SYS_CHANGE_VERSION]            BIGINT          NOT NULL,
    [SYS_CHANGE_OPERATION]          CHAR (1)        NULL,
    [paga_change_log_id]            INT             NULL
);




GO
CREATE UNIQUE CLUSTERED INDEX [ix_FinancialTransaction]
    ON [dbo].[FinancialTransaction]([FinancialTransactionId] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);


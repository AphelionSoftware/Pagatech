CREATE TABLE [Staging].[NIBBS_GL_Detail] (
    [ID]                         INT            IDENTITY (1, 1) NOT NULL,
    [ImportedFileID]             INT            NULL,
    [FinancialTransactionId]     VARCHAR (1000) NULL,
    [FinancialTransactionItemId] VARCHAR (1000) NULL,
    [FinancialTransactionTypeId] VARCHAR (1000) NULL,
    [Amount]                     VARCHAR (1000) NULL,
    [ExternalReferenceNumber]    VARCHAR (1000) NULL,
    [Fee]                        VARCHAR (1000) NULL,
    [ShortCode]                  VARCHAR (1000) NULL,
    [TransactionDate]            VARCHAR (1000) NULL,
    [ReferenceNumber]            VARCHAR (1000) NULL,
    [AccountCode]                VARCHAR (1000) NULL,
    [CreditAmount]               VARCHAR (1000) NULL,
    [DebitAmount]                VARCHAR (1000) NULL,
    [FinancialAccountTypeId]     VARCHAR (1000) NULL,
    [Cancelled]                  VARCHAR (1000) NULL,
    [Reverses]                   VARCHAR (1000) NULL,
    [ReversedBy]                 VARCHAR (1000) NULL,
    [AccountHolderId]            VARCHAR (1000) NULL,
    [BankAccountId]              VARCHAR (1000) NULL,
    [UserId]                     VARCHAR (1000) NULL,
    [TransactionLineNumber]      VARCHAR (1000) NULL,
    [sys_CreatedBy]              VARCHAR (255)  CONSTRAINT [DF_NIBBS_GL_Detail_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]              DATETIME       CONSTRAINT [DF_NIBBS_GL_Detail_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]             VARCHAR (255)  CONSTRAINT [DF_NIBBS_GL_Detail_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]             DATETIME       CONSTRAINT [DF_NIBBS_GL_Detail_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL
);




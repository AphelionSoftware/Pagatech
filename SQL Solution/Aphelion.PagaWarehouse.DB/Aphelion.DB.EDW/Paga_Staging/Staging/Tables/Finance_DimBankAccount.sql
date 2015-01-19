CREATE TABLE [Staging].[Finance_DimBankAccount] (
    [DimBankAccountID]             INT             NULL,
    [AccountAlias]                 VARCHAR (20)    NULL,
    [AccountHolderName]            VARCHAR (255)   NULL,
    [AccountLinkIdentifier]        VARCHAR (30)    NULL,
    [BankAccountLinkStatusComment] VARCHAR (1000)  NULL,
    [BankAccountLinkStatusType]    VARCHAR (255)   NOT NULL,
    [BranchName]                   VARCHAR (255)   NULL,
    [DeltaHash]                    BIGINT          NULL,
    [DurationLimit]                DECIMAL (18, 2) NULL,
    [DurationLimitSeconds]         INT             NULL,
    [IsEnabled]                    BIT             NULL,
    [KYC_Rating]                   VARCHAR (30)    NULL,
    [MobilePhoneNumber]            VARCHAR (30)    NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [SourceKey]                    INT             NOT NULL,
    [SourceKeyHash]                BIGINT          NULL,
    [TextDesciption]               VARCHAR (1000)  NULL,
    [TransactionLimit]             DECIMAL (18, 2) NULL,
    [DimBankSourceKey]             INT             NOT NULL,
    [SYS_CHANGE_OPERATION]         CHAR (1)        DEFAULT ('I') NOT NULL
);




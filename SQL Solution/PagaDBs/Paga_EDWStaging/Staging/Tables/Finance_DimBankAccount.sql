CREATE TABLE [Staging].[Finance_DimBankAccount] (
    [SourceKey]                    VARCHAR (255)   NOT NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [Code]                         VARCHAR (50)    NOT NULL,
    [BankSourceKey]                INT             NOT NULL,
    [BankAccountLinkStatusType]    VARCHAR (255)   NOT NULL,
    [Description]                  VARCHAR (1000)  NULL,
    [AccountHolderName]            VARCHAR (255)   NULL,
    [BranchName]                   VARCHAR (255)   NULL,
    [KYC_Rating]                   VARCHAR (30)    NULL,
    [MobilePhoneNumber]            VARCHAR (30)    NULL,
    [BankAccountLinkStatusComment] VARCHAR (1000)  NULL,
    [AccountNumber]                VARBINARY (256) NULL,
    [AccountAlias]                 VARCHAR (20)    NULL,
    [TransactionLimit]             DECIMAL (18, 2) NULL,
    [DurationLimit]                DECIMAL (18, 2) NULL,
    [DurationLimitSeconds]         INT             NULL,
    [IsEnabled]                    BIT             NULL,
    [AccountLinkIdentifier]        VARCHAR (30)    NULL
);




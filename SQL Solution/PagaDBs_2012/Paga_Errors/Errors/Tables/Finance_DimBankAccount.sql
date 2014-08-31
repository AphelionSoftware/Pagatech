CREATE TABLE [Errors].[Finance_DimBankAccount] (
    [QueueID]                      INT             NOT NULL,
    [SSISErrorCode]                INT             NOT NULL,
    [SSISErrorColumn]              INT             NOT NULL,
    [PackageName]                  VARCHAR (255)   NOT NULL,
    [ErrorType]                    VARCHAR (255)   NOT NULL,
    [AccountAlias]                 VARCHAR (20)    NULL,
    [AccountHolderName]            VARCHAR (255)   NULL,
    [AccountLinkIdentifier]        VARCHAR (30)    NULL,
    [BankAccountLinkStatusComment] VARCHAR (1000)  NULL,
    [BankAccountLinkStatusType]    VARCHAR (255)   NOT NULL,
    [BankSourceKey]                INT             NOT NULL,
    [BranchName]                   VARCHAR (255)   NULL,
    [Code]                         VARCHAR (50)    NOT NULL,
    [Description]                  VARCHAR (1000)  NULL,
    [DurationLimit]                DECIMAL (18, 2) NULL,
    [DurationLimitSeconds]         INT             NULL,
    [KYC_Rating]                   VARCHAR (30)    NULL,
    [MobilePhoneNumber]            VARCHAR (30)    NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [TransactionLimit]             DECIMAL (18, 2) NULL
);


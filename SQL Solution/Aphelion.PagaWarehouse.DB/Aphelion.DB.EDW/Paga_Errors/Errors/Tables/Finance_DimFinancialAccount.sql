CREATE TABLE [Errors].[Finance_DimFinancialAccount] (
    [QueueID]                          INT             NOT NULL,
    [SSISErrorCode]                    INT             NOT NULL,
    [SSISErrorColumn]                  INT             NOT NULL,
    [PackageName]                      VARCHAR (255)   NOT NULL,
    [ErrorType]                        VARCHAR (255)   NOT NULL,
    [SourceKey]                        INT             NOT NULL,
    [Name]                             VARCHAR (255)   NOT NULL,
    [FinancialHoldingAccountSourceKey] INT             NULL,
    [BankAccountSourceKey]             INT             NOT NULL,
    [PagaAccountSourceKey]             INT             NOT NULL,
    [CurrencySourceKey]                INT             NOT NULL,
    [FinancialAccountTypeSourceKey]    INT             NOT NULL,
    [AccountNumber]                    VARCHAR (20)    NULL,
    [RestrictedBalance]                DECIMAL (18, 2) NULL,
    [OpeningBalance]                   DECIMAL (18, 2) NULL,
    [TotalBalance]                     DECIMAL (18, 2) NULL,
    [SYS_CHANGE_VERSION]               BIGINT          NOT NULL,
    [SYS_CHANGE_OPERATION]             CHAR (1)        NOT NULL,
    [GLCodeSourceKey]                  INT             NOT NULL
);


CREATE TABLE [Errors].[Finance_DimFinancialHoldingAccount] (
    [QueueID]                      INT             NOT NULL,
    [SSISErrorCode]                INT             NOT NULL,
    [SSISErrorColumn]              INT             NOT NULL,
    [PackageName]                  VARCHAR (255)   NOT NULL,
    [ErrorType]                    VARCHAR (255)   NOT NULL,
    [AccountNumber]                VARCHAR (20)    NULL,
    [DeltaHash]                    BIGINT          NULL,
    [DimFinancialHoldingAccountID] INT             NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [OpeningBalance]               DECIMAL (18, 2) NULL,
    [RestrictedBalance]            DECIMAL (18, 2) NULL,
    [SourceKey]                    VARCHAR (255)   NOT NULL,
    [SourceKeyHash]                BIGINT          NULL,
    [TotalBalance]                 DECIMAL (18, 2) NULL
);


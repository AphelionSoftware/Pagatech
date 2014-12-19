CREATE TABLE [Errors].[DimHoldingFinancialAccount] (
    [QueueID]                        INT           NOT NULL,
    [SSISErrorCode]                  INT           NOT NULL,
    [SSISErrorColumn]                INT           NOT NULL,
    [PackageName]                    VARCHAR (255) NOT NULL,
    [ErrorType]                      VARCHAR (255) NOT NULL,
    [AccountCode_SourceKey]          INT           NULL,
    [AccountNumber]                  NVARCHAR (20) NULL,
    [Currency_SourceKey]             VARCHAR (50)  NULL,
    [FinancialAccountType_SourceKey] VARCHAR (70)  NULL,
    [PagaAccount_SourceKey]          INT           NOT NULL,
    [SourceKey]                      INT           NOT NULL,
    [DeltaHash]                      BIGINT        NULL,
    [DimHoldingFinancialAccountID]   INT           NULL,
    [SourceKeyHash]                  BIGINT        NULL,
    [DimCurrencyID]                  INT           NULL,
    [DimFinancialAccountTypeID]      INT           NULL,
    [DimGLCodeID]                    INT           NULL,
    [DimPagaAccountID]               INT           NULL
);


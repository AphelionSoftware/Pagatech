CREATE TABLE [Staging].[Finance_FactFinancialTransaction] (
    [DimCreatedDateID]                  INT             NULL,
    [DimCreatedTimeID]                  INT             NULL,
    [FinancialTransactionTypeSourceKey] VARCHAR (255)   NULL,
    [FinancialAccountSourceKey]         VARCHAR (255)   NULL,
    [PagaAccountSourceKey]              VARCHAR (255)   NULL,
    [UserSourceKey]                     VARCHAR (255)   NULL,
    [ProcessTypeSourceKey]              VARCHAR (255)   NULL,
    [DimEffectiveDateID]                INT             NULL,
    [DimEffectiveTimeID]                INT             NULL,
    [DimTransactionDateID]              INT             NULL,
    [DimTransactionTimeID]              INT             NULL,
    [FinancialTransactionSourceKey]     VARCHAR (255)   NOT NULL,
    [OriginalTransactionID]             INT             NULL,
    [RelatedTransactionID]              INT             NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [CreditAmount]                      DECIMAL (18, 2) NULL,
    [MovementAmount]                    DECIMAL (19, 2) NULL,
    [change_operation]                  CHAR (1)        NULL
);






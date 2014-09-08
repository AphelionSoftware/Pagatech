CREATE TABLE [Staging].[Finance_FactFinancialTransaction] (
    [CreditAmount]                              DECIMAL (18, 2) NULL,
    [DebitAmount]                               DECIMAL (18, 2) NULL,
    [SourceKey]                                 INT             NOT NULL,
    [DimCreatedDateID]                          INT             NULL,
    [DimCreatedTimeID]                          INT             NULL,
    [DimEffectiveDateID]                        INT             NULL,
    [DimEffectiveTimeID]                        INT             NULL,
    [DimTransactionDateID]                      INT             NULL,
    [DimTransactionTimeID]                      INT             NULL,
    [DimFinancialAccountSourceKey]              VARCHAR (255)   NULL,
    [DimFinancialTransactionTypeSourceKey]      VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]                   VARCHAR (255)   NULL,
    [DimProcessTypeSourceKey]                   VARCHAR (255)   NULL,
    [DimUserSourceKey]                          VARCHAR (255)   NULL,
    [OriginalFactFinancialTransactionSourceKey] INT             NULL,
    [RelatedFactFinancialTransactionSourceKey]  INT             NULL,
    [change_operation]                          CHAR (1)        DEFAULT ((1)) NOT NULL
);










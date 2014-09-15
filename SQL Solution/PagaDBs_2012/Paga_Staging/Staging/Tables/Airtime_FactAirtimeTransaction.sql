CREATE TABLE [Staging].[Airtime_FactAirtimeTransaction] (
    [CreditAmount]                         DECIMAL (18, 2) NULL,
    [DebitAmount]                          DECIMAL (18, 2) NULL,
    [SourceKey]                            INT             NOT NULL,
    [DimDateID]                            INT             NULL,
    [DimTimeID]                            INT             NULL,
    [DimCitySourceKey]                     VARCHAR (255)   NULL,
    [DimFinancialAccountSourceKey]         VARCHAR (255)   NULL,
    [DimFinancialTxTypeSourceKey] VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]              VARCHAR (255)   NULL,
    [change_operation]                     CHAR (1)        DEFAULT ((1)) NOT NULL
);








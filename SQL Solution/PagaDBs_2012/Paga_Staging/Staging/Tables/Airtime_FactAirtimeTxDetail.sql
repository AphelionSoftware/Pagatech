CREATE TABLE [Staging].[Airtime_FactAirtimeTxDetail] (
    [CreditAmount]                 DECIMAL (18, 2) NULL,
    [DebitAmount]                  DECIMAL (18, 2) NULL,
    [SourceKey]                    INT             NOT NULL,
    [TextDescription]              VARCHAR (200)   NOT NULL,
    [DimCreatedDateID]             INT             NOT NULL,
    [DimCreatedTimeID]             INT             NOT NULL,
    [DimFinancialAccountSourceKey] VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]      VARCHAR (255)   NULL,
    [FactAirtimeTxHeaderSourceKey] INT             NOT NULL,
    [change_operation]             CHAR (1)        DEFAULT ((1)) NOT NULL
);


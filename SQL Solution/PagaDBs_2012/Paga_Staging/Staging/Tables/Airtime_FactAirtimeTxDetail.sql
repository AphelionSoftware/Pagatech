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




GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20141015-194342]
    ON [Staging].[Airtime_FactAirtimeTxDetail]([DimPagaAccountSourceKey] ASC, [SourceKey] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20141015-194326]
    ON [Staging].[Airtime_FactAirtimeTxDetail]([DimFinancialAccountSourceKey] ASC, [SourceKey] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20141015-194307]
    ON [Staging].[Airtime_FactAirtimeTxDetail]([FactAirtimeTxHeaderSourceKey] ASC, [SourceKey] ASC);


GO
CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20141015-194251]
    ON [Staging].[Airtime_FactAirtimeTxDetail]([SourceKey] ASC);


CREATE TABLE [Staging].[Finance_FactFinancialTxDetail] (
    [CreditAmount]                   DECIMAL (18, 2) NULL,
    [DebitAmount]                    DECIMAL (18, 2) NULL,
    [SourceKey]                      INT             NOT NULL,
    [TextDescription]                VARCHAR (200)   NOT NULL,
    [DimCreatedDateID]               INT             NOT NULL,
    [DimCreatedTimeID]               INT             NOT NULL,
    [DimFinancialAccountSourceKey]   VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]        VARCHAR (255)   NULL,
    [FactFinancialTxHeaderSourceKey] INT             NOT NULL,
    [change_operation]               CHAR (1)        DEFAULT ((1)) NOT NULL
);






GO



GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactFinancialTxDetail_SourceKey]
    ON [Staging].[Finance_FactFinancialTxDetail]([SourceKey] ASC);


GO
CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20141003-101636]
    ON [Staging].[Finance_FactFinancialTxDetail]([SourceKey] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FinancialTxDetail_PagaAccount]
    ON [Staging].[Finance_FactFinancialTxDetail]([DimPagaAccountSourceKey] ASC, [SourceKey] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FinancialTxDetail_FinancialAccount]
    ON [Staging].[Finance_FactFinancialTxDetail]([DimFinancialAccountSourceKey] ASC, [SourceKey] ASC);


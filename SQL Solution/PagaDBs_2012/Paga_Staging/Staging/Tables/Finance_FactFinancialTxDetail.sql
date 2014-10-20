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
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20141016-110007]
    ON [Staging].[Finance_FactFinancialTxDetail]([Loaded] ASC, [SourceKey] ASC) WHERE ([Loaded]=(0));


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactFinancialTxDetail_SourceKey]
    ON [Staging].[Finance_FactFinancialTxDetail]([SourceKey] ASC);


GO
CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20141003-101636]
    ON [Staging].[Finance_FactFinancialTxDetail]([SourceKey] ASC);


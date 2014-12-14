CREATE TABLE [dbo].[Dim_FinancialAccount] (
    [SourceKey]                      INT           NOT NULL,
    [PagaAccount_SourceKey]          INT           NOT NULL,
    [AccountCode_SourceKey]          INT           NULL,
    [AccountNumber]                  NVARCHAR (20) NULL,
    [Currency_SourceKey]             VARCHAR (50)  NULL,
    [FinancialAccountType_SourceKey] VARCHAR (70)  NULL,
    [HoldingAccount_SourceKey]       INT           NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccount_SourceKey]
    ON [dbo].[Dim_FinancialAccount]([SourceKey] ASC);


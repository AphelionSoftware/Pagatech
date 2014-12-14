CREATE TABLE [dbo].[Dim_HoldingFinancialAccount] (
    [SourceKey]                      INT           NOT NULL,
    [PagaAccount_SourceKey]          INT           NOT NULL,
    [AccountCode_SourceKey]          INT           NULL,
    [AccountNumber]                  NVARCHAR (20) NULL,
    [Currency_SourceKey]             VARCHAR (50)  NULL,
    [FinancialAccountType_SourceKey] VARCHAR (70)  NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimHoldingFinancialAccount_SourceKey]
    ON [dbo].[Dim_HoldingFinancialAccount]([SourceKey] ASC);


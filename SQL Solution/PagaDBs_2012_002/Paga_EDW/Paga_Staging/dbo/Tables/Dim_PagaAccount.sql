CREATE TABLE [dbo].[Dim_PagaAccount] (
    [SourceKey]                   INT          NOT NULL,
    [PagaAccountNumber]           VARCHAR (12) NULL,
    [BankingStatus_SourceKey]     VARCHAR (50) NULL,
    [PagaAccountStatus_SourceKey] VARCHAR (50) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimPagaAccount_SourceKey]
    ON [dbo].[Dim_PagaAccount]([SourceKey] ASC);


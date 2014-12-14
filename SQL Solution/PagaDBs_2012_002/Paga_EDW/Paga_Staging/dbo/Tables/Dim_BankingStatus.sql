CREATE TABLE [dbo].[Dim_BankingStatus] (
    [BankingStatus_SourceKey] VARCHAR (50) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimBankingStatus_SourceKey]
    ON [dbo].[Dim_BankingStatus]([BankingStatus_SourceKey] ASC);


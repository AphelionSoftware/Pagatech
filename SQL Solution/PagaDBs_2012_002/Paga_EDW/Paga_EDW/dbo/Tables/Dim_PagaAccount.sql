CREATE TABLE [dbo].[Dim_PagaAccount] (
    [DimPagaAccountID]       INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]              INT           NOT NULL,
    [PagaAccountNumber]      VARCHAR (12)  NULL,
    [DimBankingStatusID]     INT           NULL,
    [DimPagaAccountStatusID] INT           NULL,
    [SourceKeyHash]          BIGINT        NULL,
    [DeltaHash]              BIGINT        NULL,
    [sys_CreatedBy]          VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]          DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]         VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimPagaAccount] PRIMARY KEY CLUSTERED ([DimPagaAccountID] ASC),
    CONSTRAINT [fk_DimPagaAccount_DimBankingStatusID] FOREIGN KEY ([DimBankingStatusID]) REFERENCES [dbo].[Dim_BankingStatus] ([DimBankingStatusID]),
    CONSTRAINT [fk_DimPagaAccount_DimPagaAccountStatusID] FOREIGN KEY ([DimPagaAccountStatusID]) REFERENCES [dbo].[Dim_PagaAccountStatus] ([DimPagaAccountStatusID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimPagaAccount_SourceKey]
    ON [dbo].[Dim_PagaAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Dim_PagaAccount';


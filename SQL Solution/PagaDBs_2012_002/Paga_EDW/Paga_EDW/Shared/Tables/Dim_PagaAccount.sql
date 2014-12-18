CREATE TABLE [Shared].[DimPagaAccount] (
    [DimPagaAccountID]       INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]              INT           NOT NULL,
    [PagaAccountNumber]      VARCHAR (12)  NULL,
    [DimBankingStatusID]     INT           NULL,
    [DimPagaAccountStatusID] INT           NULL,
    [SourceKeyHash]          BIGINT        NULL,
    [DeltaHash]              BIGINT        NULL,
    [sys_CreatedBy]          VARCHAR (255) NOT NULL,
    [sys_CreatedOn]          DATETIME      NOT NULL,
    [sys_ModifiedBy]         VARCHAR (255) NOT NULL,
    [sys_ModifiedOn]         DATETIME      NOT NULL,
    CONSTRAINT [pk_DimPagaAccount] PRIMARY KEY CLUSTERED ([DimPagaAccountID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimPagaAccount_SourceKey]
    ON [Shared].[DimPagaAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount';


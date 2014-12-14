CREATE TABLE [dbo].[Dim_FinancialAccount] (
    [DimFinancialAccountID]        INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                    INT           NOT NULL,
    [DimPagaAccountID]             INT           NOT NULL,
    [DimGLCodeID]                  INT           NOT NULL,
    [DimCurrencyID]                INT           NULL,
    [DimFinancialAccountTypeID]    INT           NOT NULL,
    [DimHoldingFinancialAccountID] INT           NULL,
    [AccountNumber]                NVARCHAR (20) NULL,
    [SourceKeyHash]                BIGINT        NULL,
    [DeltaHash]                    BIGINT        NULL,
    [sys_CreatedBy]                VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]                DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]               VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]               DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialAccount] PRIMARY KEY CLUSTERED ([DimFinancialAccountID] ASC),
    CONSTRAINT [fk_DimFinancialAccount_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [dbo].[Dim_Currency] ([DimCurrencyID]),
    CONSTRAINT [fk_DimFinancialAccount_DimFinancialAccountTypeID] FOREIGN KEY ([DimFinancialAccountTypeID]) REFERENCES [dbo].[Dim_FinancialAccountType] ([DimFinancialAccountTypeID]),
    CONSTRAINT [fk_DimFinancialAccount_DimGLCodeID] FOREIGN KEY ([DimGLCodeID]) REFERENCES [dbo].[Dim_GLCode] ([DimGLCodeID]),
    CONSTRAINT [fk_DimFinancialAccount_DimHoldingFinancialAccountID] FOREIGN KEY ([DimHoldingFinancialAccountID]) REFERENCES [dbo].[Dim_HoldingFinancialAccount] ([DimHoldingFinancialAccountID]),
    CONSTRAINT [fk_DimFinancialAccount_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [dbo].[Dim_PagaAccount] ([DimPagaAccountID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccount_SourceKey]
    ON [dbo].[Dim_FinancialAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Dim_FinancialAccount';


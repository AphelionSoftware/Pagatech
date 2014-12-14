﻿CREATE TABLE [dbo].[Dim_HoldingFinancialAccount] (
    [DimHoldingFinancialAccountID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                    INT           NOT NULL,
    [DimPagaAccountID]             INT           NOT NULL,
    [DimGLCodeID]                  INT           NULL,
    [AccountNumber]                NVARCHAR (20) NULL,
    [DimCurrencyID]                INT           NULL,
    [DimFinancialAccountTypeID]    INT           NULL,
    [SourceKeyHash]                BIGINT        NULL,
    [DeltaHash]                    BIGINT        NULL,
    [sys_CreatedBy]                VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]                DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]               VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]               DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_Dim_HoldingFinancialAccount] PRIMARY KEY CLUSTERED ([DimHoldingFinancialAccountID] ASC),
    CONSTRAINT [fk_DimHoldingFinancialAccount_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [dbo].[Dim_Currency] ([DimCurrencyID]),
    CONSTRAINT [fk_DimHoldingFinancialAccount_DimFinancialAccountTypeID] FOREIGN KEY ([DimFinancialAccountTypeID]) REFERENCES [dbo].[Dim_FinancialAccountType] ([DimFinancialAccountTypeID]),
    CONSTRAINT [fk_DimHoldingFinancialAccount_DimGLCodeID] FOREIGN KEY ([DimGLCodeID]) REFERENCES [dbo].[Dim_GLCode] ([DimGLCodeID]),
    CONSTRAINT [fk_DimHoldingFinancialAccount_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [dbo].[Dim_PagaAccount] ([DimPagaAccountID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimHoldingFinancialAccount_SourceKey]
    ON [dbo].[Dim_HoldingFinancialAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Dim_HoldingFinancialAccount';


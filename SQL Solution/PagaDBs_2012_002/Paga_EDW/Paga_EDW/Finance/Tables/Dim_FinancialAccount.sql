CREATE TABLE [Finance].[DimFinancialAccount] (
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
    [sys_CreatedBy]                VARCHAR (255) NOT NULL,
    [sys_CreatedOn]                DATETIME      NOT NULL,
    [sys_ModifiedBy]               VARCHAR (255) NOT NULL,
    [sys_ModifiedOn]               DATETIME      NOT NULL,
    CONSTRAINT [pk_DimFinancialAccount] PRIMARY KEY CLUSTERED ([DimFinancialAccountID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccount_SourceKey]
    ON [Finance].[DimFinancialAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount';


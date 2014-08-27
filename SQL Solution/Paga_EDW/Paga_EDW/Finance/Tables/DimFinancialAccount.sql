﻿CREATE TABLE [Finance].[DimFinancialAccount] (
    [DimFinancialAccountID]        INT             NOT NULL,
    [SourceKey]                    VARCHAR (255)   NOT NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [Code]                         VARCHAR (50)    NOT NULL,
    [DimCOALevel4ID]               INT             NOT NULL,
    [DimBankAccountID]             INT             NOT NULL,
    [DimCurrencyID]                INT             NOT NULL,
    [DimFinancialAccountTypeID]    INT             NOT NULL,
    [DimAccountHolderUserID]       INT             NOT NULL,
    [DimHoldingFinancialAccountID] INT             NOT NULL,
    [AccountNumber]                VARCHAR (20)    NULL,
    [RestrictedBalance]            DECIMAL (18, 2) NULL,
    [OpeningBalance]               DECIMAL (18, 2) NULL,
    [TotalBalance]                 DECIMAL (18, 2) NULL,
    [SourceKeyHash]                BIGINT          NOT NULL,
    [DeltaHash]                    BIGINT          NOT NULL,
    [sys_ModifiedBy]               VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]               DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialAccountID] PRIMARY KEY CLUSTERED ([DimFinancialAccountID] ASC),
    CONSTRAINT [fk_DimFinancialAccount_DimAccountHolderUserID] FOREIGN KEY ([DimAccountHolderUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [uc_DimFinancialAccount_DimAccountHolderID] UNIQUE NONCLUSTERED ([DimAccountHolderUserID] ASC),
    CONSTRAINT [uc_DimFinancialAccount_DimBankAccountID] UNIQUE NONCLUSTERED ([DimBankAccountID] ASC),
    CONSTRAINT [uc_DimFinancialAccount_DimCOALevel4ID] UNIQUE NONCLUSTERED ([DimCOALevel4ID] ASC),
    CONSTRAINT [uc_DimFinancialAccount_DimCurrencyID] UNIQUE NONCLUSTERED ([DimCurrencyID] ASC),
    CONSTRAINT [uc_DimFinancialAccount_DimFinancialAccountTypeID] UNIQUE NONCLUSTERED ([DimFinancialAccountTypeID] ASC),
    CONSTRAINT [uc_DimFinancialAccount_DimHoldingFinancialAccountID] UNIQUE NONCLUSTERED ([DimHoldingFinancialAccountID] ASC),
    CONSTRAINT [uc_DimFinancialAccount_SourceKey] UNIQUE NONCLUSTERED ([SourceKey] ASC)
);






GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccount_SourceKey]
    ON [Finance].[DimFinancialAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TotalBalance', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'TotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RestrictedBalance', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'RestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimHoldingFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimHoldingFinancialAccountID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountTypeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBankAccountID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCOALevel4ID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCOALevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimAccountHolderID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimAccountHolderUserID';


CREATE TABLE [Finance].[DimFinancialAccountLevel2] (
    [DimFinancialAccountLevel2ID] INT             NOT NULL,
    [SourceKey]                   VARCHAR (255)   NOT NULL,
    [Name]                        VARCHAR (255)   NOT NULL,
    [Code]                        VARCHAR (50)    NOT NULL,
    [DimAccountHolderUserID]      INT             NOT NULL,
    [DimBankAccountID]            INT             NOT NULL,
    [DimCOALevel4ID]              INT             NOT NULL,
    [DimCurrencyID]               INT             NOT NULL,
    [DimFinancialAccountTypeID]   INT             NOT NULL,
    [DimFinancialAccountLevel1ID] INT             NOT NULL,
    [AccountNumber]               VARCHAR (20)    NULL,
    [RestrictedBalance]           DECIMAL (18, 2) NULL,
    [OpeningBalance]              DECIMAL (18, 2) NULL,
    [TotalBalance]                DECIMAL (18, 2) NULL,
    [SourceKeyHash]               BIGINT          NOT NULL,
    [DeltaHash]                   BIGINT          NOT NULL,
    [sys_ModifiedBy]              VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]              DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]               VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]               DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialAccountLevel2ID] PRIMARY KEY CLUSTERED ([DimFinancialAccountLevel2ID] ASC),
    CONSTRAINT [fk_DimFinancialAccountLevel2_DimAccountHolderUserID] FOREIGN KEY ([DimAccountHolderUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_DimFinancialAccountLevel2_DimBankAccountID] FOREIGN KEY ([DimBankAccountID]) REFERENCES [Finance].[DimBankAccount] ([DimBankAccountID]),
    CONSTRAINT [fk_DimFinancialAccountLevel2_DimCOALevel4ID] FOREIGN KEY ([DimCOALevel4ID]) REFERENCES [Finance].[DimCOALevel4] ([DimCOALevel4ID]),
    CONSTRAINT [fk_DimFinancialAccountLevel2_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [Finance].[DimCurrency] ([DimCurrencyID]),
    CONSTRAINT [fk_DimFinancialAccountLevel2_DimFinancialAccountLevel1ID] FOREIGN KEY ([DimFinancialAccountLevel1ID]) REFERENCES [Finance].[DimFinancialAccountLevel1] ([DimFinancialAccountLevel1ID]),
    CONSTRAINT [fk_DimFinancialAccountLevel2_DimFinancialAccountTypeID] FOREIGN KEY ([DimFinancialAccountTypeID]) REFERENCES [Classification].[DimFinancialAccountType] ([DimFinancialAccountTypeID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccountLevel2_SourceKey]
    ON [Finance].[DimFinancialAccountLevel2]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TotalBalance', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'TotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RestrictedBalance', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'RestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimHoldingFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountTypeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'DimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCOALevel4ID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'DimCOALevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBankAccountID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'DimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimAccountHolderID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'DimAccountHolderUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2', @level2type = N'COLUMN', @level2name = N'SourceKey';


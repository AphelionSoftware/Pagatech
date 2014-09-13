CREATE TABLE [Finance].[FactFinancialTransaction] (
    [FactFinancialTransactionID]         INT             NOT NULL,
    [SourceKey]                          INT             NOT NULL,
    [DimCreatedDateID]                   INT             NULL,
    [DimCreatedTimeID]                   INT             NULL,
    [DimFinancialTransactionTypeID]      INT             NULL,
    [DimFinancialAccountID]              INT             NULL,
    [DimPagaAccountID]                   INT             NULL,
    [DimUserID]                          INT             NULL,
    [DimProcessTypeID]                   INT             NULL,
    [DimEffectiveDateID]                 INT             NULL,
    [DimEffectiveTimeID]                 INT             NULL,
    [DimTransactionDateID]               INT             NULL,
    [DimTransactionTimeID]               INT             NULL,
    [OriginalFactFinancialTransactionID] INT             NULL,
    [RelatedFactFinancialTransactionID]  INT             NULL,
    [DebitAmount]                        DECIMAL (18, 2) NULL,
    [CreditAmount]                       DECIMAL (18, 2) NULL,
    [MovementAmount]                     AS              ([CreditAmount]-[DebitAmount]),
    CONSTRAINT [pk_FactFinancialTransactionID] PRIMARY KEY CLUSTERED ([FactFinancialTransactionID] ASC),
    CONSTRAINT [fk_FactFinancialTransaction_DimCreatedDateID] FOREIGN KEY ([DimCreatedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimCreatedTimeID] FOREIGN KEY ([DimCreatedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimEffectiveDateID] FOREIGN KEY ([DimEffectiveDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimEffectiveTimeID] FOREIGN KEY ([DimEffectiveTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimFinancialAccountID] FOREIGN KEY ([DimFinancialAccountID]) REFERENCES [Finance].[DimFinancialAccount] ([DimFinancialAccountID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimFinancialTransactionTypeID] FOREIGN KEY ([DimFinancialTransactionTypeID]) REFERENCES [Classification].[DimFinancialTransactionType] ([DimFinancialTransactionTypeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimProcessTypeID] FOREIGN KEY ([DimProcessTypeID]) REFERENCES [Classification].[DimProcessType] ([DimProcessTypeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimTransactionDateID] FOREIGN KEY ([DimTransactionDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimTransactionTimeID] FOREIGN KEY ([DimTransactionTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_OriginalTransactionID] FOREIGN KEY ([OriginalFactFinancialTransactionID]) REFERENCES [Finance].[FactFinancialTransaction] ([FactFinancialTransactionID]),
    CONSTRAINT [fk_FactFinancialTransaction_RelatedTransactionID] FOREIGN KEY ([RelatedFactFinancialTransactionID]) REFERENCES [Finance].[FactFinancialTransaction] ([FactFinancialTransactionID])
);








GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction';


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = 'DimFinancialAccountID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'DimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'DimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'DimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'DimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OriginalTransactionID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'OriginalFactFinancialTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RelatedTransactionID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'RelatedFactFinancialTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


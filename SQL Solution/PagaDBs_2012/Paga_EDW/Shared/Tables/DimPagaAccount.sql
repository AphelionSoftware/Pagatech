CREATE TABLE [Shared].[DimPagaAccount] (
    [DimPagaAccountID]         INT           NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [DimPagaAccountStatusID]   INT           NOT NULL,
    [RegistrationDateID]       INT           NOT NULL,
    [PagaAccountNumber]        VARCHAR (12)  NULL,
    [ExternalAccountNumber]    VARCHAR (12)  NULL,
    [BankingStatus]            VARCHAR (50)  NOT NULL,
    [hasOnlineAccount]         BIT           NULL,
    [IsActive]                 BIT           NULL,
    [IsEnabled]                BIT           NULL,
	[affiliate] BIT SPARSE, 
	[agent] BIT SPARSE, 
	[bank] BIT SPARSE, 
	[business] BIT SPARSE, 
	[card_processor] BIT SPARSE, 
	[cash_collector] BIT SPARSE, 
	[customer] BIT SPARSE, 
	[merchant] BIT SPARSE, 
	[mobile_operator] BIT SPARSE, 
	[paga] BIT SPARSE, 
	[remittance_processor] BIT SPARSE, 
	[service_aggregator] BIT SPARSE, 
    [SourceKeyHash]            BIGINT        NOT NULL,
    [DeltaHash]                BIGINT        NOT NULL,
    [sys_ModifiedBy]           VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]            VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]            DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimPagaAccountID] PRIMARY KEY CLUSTERED ([DimPagaAccountID] ASC),
    CONSTRAINT [fk_DimPagaAccount_DimPagaAccountStatusID] FOREIGN KEY ([DimPagaAccountStatusID]) REFERENCES [Classification].[DimPagaAccountStatus] ([DimPagaAccountStatusID])
   
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimPagaAccount_SourceKey]
    ON [Shared].[DimPagaAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'RegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromOLAP', @value = N'true', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'RegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'PagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'ExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'BankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'hasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'IsActive';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'IsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DeltaHash';


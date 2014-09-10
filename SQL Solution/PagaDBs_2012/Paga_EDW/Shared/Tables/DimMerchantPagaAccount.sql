CREATE TABLE [Shared].[DimMerchantPagaAccount] (
    [DimMerchantPagaAccountID] INT           NOT NULL,
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
    [SourceKeyHash]            BIGINT        NOT NULL,
    [DeltaHash]                BIGINT        NOT NULL,
    [sys_ModifiedBy]           VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]            VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]            DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimMerchantPagaAccountID] PRIMARY KEY CLUSTERED ([DimMerchantPagaAccountID] ASC),
    CONSTRAINT [fk_DimMerchantPagaAccount_DimPagaAccountStatusID] FOREIGN KEY ([DimPagaAccountStatusID]) REFERENCES [Classification].[DimPagaAccountStatus] ([DimPagaAccountStatusID]),
    CONSTRAINT [fk_DimMerchantPagaAccount_RegistrationDateID] FOREIGN KEY ([RegistrationDateID]) REFERENCES [Shared].[DimDate] ([DimDateID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimMerchantPagaAccount_SourceKey]
    ON [Shared].[DimMerchantPagaAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimMerchantPagaAccount';


GO



﻿CREATE TABLE [Shared].[DimMerchantPagaAccount] (
    [DimMerchantPagaAccountID]         INT           NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [Code]                     VARCHAR (50)  NOT NULL,
    [DimPagaAccountStatusID]   INT           NOT NULL,
    [DimDealerID]                INT           NOT NULL,
	[DimPagaAccountUserTypeID] INT			 NOT NULL,
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
    CONSTRAINT [fk_DimMerchantPagaAccount_DimDealerID] FOREIGN KEY ([DimDealerID]) REFERENCES [Shared].dimDealer (DimDealerID),
    CONSTRAINT [fk_DimMerchantPagaAccount_RegistrationDateID] FOREIGN KEY ([RegistrationDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
	CONSTRAINT [fk_DimMerchantPagaAccount_DimPagaAccountUserTypeID] FOREIGN KEY (DimPagaAccountUserTypeID) REFERENCES Classification.dimPagaaccountUserType (DimPagaAccountUserTYpeID)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimMerchantPagaAccount_SourceKey]
    ON [Shared].[DimMerchantPagaAccount]([SourceKey] ASC);




EXEC sys.sp_updateextendedproperty 
@name=N'ExcludeFromOLAP',
@value=N'1' , 
@level0type=N'SCHEMA',
@level0name=N'Shared', 
@level1type=N'TABLE',
@level1name=N'DimMerchantPagaAccount',
@level2type=N'COLUMN',
@level2name=N'RegistrationDateID'

GO
CREATE TABLE [Staging].[Shared_DimMerchantPagaAccount] (
    [BankingStatus]                   VARCHAR (50)  NOT NULL,
    [ExternalAccountNumber]           VARCHAR (12)  NULL,
    [Name]                            VARCHAR (255) NOT NULL,
    [PagaAccountNumber]               VARCHAR (12)  NULL,
    [SourceKey]                       VARCHAR (255) NOT NULL,
    [RegistrationDateID]              INT           NOT NULL,
    [DimDealerSourceKey]              VARCHAR (255) NOT NULL,
    [DimPagaAccountStatusSourceKey]   VARCHAR (255) NOT NULL,
    [DimPagaAccountUserTypeSourceKey] VARCHAR (255) NOT NULL,
    [change_operation]                CHAR (1)      DEFAULT ((1)) NOT NULL
);










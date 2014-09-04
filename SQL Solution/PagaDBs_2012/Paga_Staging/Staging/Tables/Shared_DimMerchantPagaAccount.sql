CREATE TABLE [Staging].[Shared_DimMerchantPagaAccount] (
    [SourceKey]                    VARCHAR (255) NOT NULL,
    [Name]                         VARCHAR (255) NOT NULL,
    [Code]                         VARCHAR (50)  NOT NULL,
    [PagaAccountStatusSourceKey]   VARCHAR (255) NOT NULL,
    [DealerSourceKey]              VARCHAR (255) NOT NULL,
    [PagaAccountUserTypeSourceKey] VARCHAR (255) NOT NULL,
    [RegistrationDateID]           INT           NOT NULL,
    [PagaAccountNumber]            VARCHAR (12)  NULL,
    [ExternalAccountNumber]        VARCHAR (12)  NULL,
    [BankingStatus]                VARCHAR (50)  NOT NULL,
    [hasOnlineAccount]             BIT           NULL,
    [IsActive]                     BIT           NULL,
    [IsEnabled]                    BIT           NULL
);




CREATE TABLE [Staging].[Shared_DimMerchantPagaAccount] (
    [SourceKey]                VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [DimPagaAccountStatusSourceKey]   INT           NOT NULL,
    [RegistrationDateID]       INT           NOT NULL,
    [PagaAccountNumber]        VARCHAR (12)  NULL,
    [ExternalAccountNumber]    VARCHAR (12)  NULL,
    [BankingStatus]            VARCHAR (50)  NOT NULL,
    [hasOnlineAccount]         BIT           NULL,
    [IsActive]                 BIT           NULL,
    [IsEnabled]                BIT           NULL,
    [change_operation]                CHAR (1)      DEFAULT ((1)) NOT NULL
);










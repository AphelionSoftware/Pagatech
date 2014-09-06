CREATE TABLE [Staging].[Shared_DimPagaAccount] (
    [BankingStatus]                   VARCHAR (50)  NOT NULL,
    [Code]                            VARCHAR (50)  NOT NULL,
    [ExternalAccountNumber]           VARCHAR (12)  NULL,
    [Name]                            VARCHAR (255) NOT NULL,
    [PagaAccountNumber]               VARCHAR (12)  NULL,
    [SourceKey]                       VARCHAR (255) NOT NULL,
    [RegistrationDateID]              INT           NOT NULL,
    [DimPagaAccountStatusSourceKey]   VARCHAR (255) NOT NULL,
    [DimPagaAccountUserTypeSourceKey] VARCHAR (255) NOT NULL,
    [DimUserSourceKey]                VARCHAR (255) NOT NULL,
    [change_operation]                CHAR (1)      DEFAULT ((1)) NOT NULL
);








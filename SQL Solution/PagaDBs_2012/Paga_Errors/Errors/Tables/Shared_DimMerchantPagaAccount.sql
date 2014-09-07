CREATE TABLE [Errors].[Shared_DimMerchantPagaAccount] (
    [QueueID]                         INT           NOT NULL,
    [SSISErrorCode]                   INT           NOT NULL,
    [SSISErrorColumn]                 INT           NOT NULL,
    [PackageName]                     VARCHAR (255) NOT NULL,
    [ErrorType]                       VARCHAR (255) NOT NULL,
    [BankingStatus]                   VARCHAR (50)  NOT NULL,
    [change_operation]                CHAR (1)      NOT NULL,
    [DimDealerSourceKey]              VARCHAR (255) NOT NULL,
    [DimPagaAccountStatusSourceKey]   VARCHAR (255) NOT NULL,
    [DimPagaAccountUserTypeSourceKey] VARCHAR (255) NOT NULL,
    [ExternalAccountNumber]           VARCHAR (12)  NULL,
    [Name]                            VARCHAR (255) NOT NULL,
    [PagaAccountNumber]               VARCHAR (12)  NULL,
    [RegistrationDateID]              INT           NOT NULL,
    [SourceKey]                       VARCHAR (255) NOT NULL
);




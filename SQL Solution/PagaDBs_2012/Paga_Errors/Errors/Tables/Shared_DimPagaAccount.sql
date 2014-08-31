CREATE TABLE [Errors].[Shared_DimPagaAccount] (
    [QueueID]                      INT           NOT NULL,
    [SSISErrorCode]                INT           NOT NULL,
    [SSISErrorColumn]              INT           NOT NULL,
    [PackageName]                  VARCHAR (255) NOT NULL,
    [ErrorType]                    VARCHAR (255) NOT NULL,
    [BankingStatus]                VARCHAR (50)  NOT NULL,
    [Code]                         VARCHAR (50)  NOT NULL,
    [ExternalAccountNumber]        VARCHAR (12)  NULL,
    [Name]                         VARCHAR (255) NOT NULL,
    [PagaAccountNumber]            VARCHAR (12)  NULL,
    [PagaAccountStatusSourceKey]   INT           NOT NULL,
    [PagaAccountUserTypeSourceKey] INT           NOT NULL,
    [RegistrationDateID]           INT           NOT NULL,
    [UserSourceKey]                INT           NOT NULL
);


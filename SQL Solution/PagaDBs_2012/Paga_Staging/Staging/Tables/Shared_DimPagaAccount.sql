﻿CREATE TABLE [Staging].[Shared_DimPagaAccount] (
    [SourceKey]                    VARCHAR (255) NOT NULL,
    [Name]                         VARCHAR (255) NOT NULL,
    [Code]                         VARCHAR (50)  NOT NULL,
    [PagaAccountStatusSourceKey]   VARCHAR (255) NOT NULL,
    [PagaAccountUserTypeSourceKey] VARCHAR (255) NOT NULL,
    [UserSourceKey]                VARCHAR (255) NOT NULL,
    [RegistrationDateID]           INT           NOT NULL,
    [PagaAccountNumber]            VARCHAR (12)  NULL,
    [ExternalAccountNumber]        VARCHAR (12)  NULL,
    [BankingStatus]                VARCHAR (50)  NOT NULL,
    [hasOnlineAccount]             BIT           NULL,
    [IsActive]                     BIT           NULL,
    [IsEnabled]                    BIT           NULL,
    [change_operation]             CHAR (1)      NULL
);






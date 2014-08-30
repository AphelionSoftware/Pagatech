﻿CREATE TABLE [Staging].[Shared_DimPagaAccount] (
    [Name]                         VARCHAR (255) NOT NULL,
    [Code]                         VARCHAR (50)  NOT NULL,
    [PagaAccountStatusSourceKey]   INT           NOT NULL,
    [PagaAccountUserTypeSourceKey] INT           NOT NULL,
    [UserSourceKey]                INT           NOT NULL,
    [RegistrationDateID]           INT           NOT NULL,
    [PagaAccountNumber]            VARCHAR (12)  NULL,
    [ExternalAccountNumber]        VARCHAR (12)  NULL,
    [BankingStatus]                VARCHAR (50)  NOT NULL,
    [hasOnlineAccount]             BIT           NULL,
    [IsActive]                     BIT           NULL,
    [IsEnabled]                    BIT           NULL
);


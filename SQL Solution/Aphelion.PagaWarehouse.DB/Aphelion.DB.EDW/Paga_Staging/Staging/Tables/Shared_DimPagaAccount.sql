﻿CREATE TABLE [Staging].[Shared_DimPagaAccount] (
    [BankingStatus]                 VARCHAR (50)  NOT NULL,
    [CreatedDateID]                 INT           NOT NULL,
    [ExternalAccountNumber]         VARCHAR (12)  NULL,
    [hasOnlineAccount]              BIT           NULL,
    [IsActive]                      BIT           NULL,
    [IsAffiliate]                   BIT           NULL,
    [IsAgent]                       BIT           NULL,
    [IsBank]                        BIT           NULL,
    [IsBusiness]                    BIT           NULL,
    [IsCardProcessor]               BIT           NULL,
    [IsCashCollector]               BIT           NULL,
    [IsCustomer]                    BIT           NULL,
    [IsEnabled]                     BIT           NULL,
    [IsMerchant]                    BIT           NULL,
    [IsMobileOperator]              BIT           NULL,
    [IsPaga]                        BIT           NULL,
    [IsRemittanceProcessor]         BIT           NULL,
    [IsServiceAggregator]           BIT           NULL,
    [Name]                          VARCHAR (255) NOT NULL,
    [PagaAccountNumber]             VARCHAR (12)  NULL,
    [RegistrationDateID]            INT           NULL,
    [SourceKey]                     INT           NOT NULL,
    [DimPagaAccountStatusSourceKey] VARCHAR (255) NOT NULL,
    [SYS_CHANGE_VERSION]            BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]          CHAR (1)      DEFAULT ('I') NOT NULL
);












GO





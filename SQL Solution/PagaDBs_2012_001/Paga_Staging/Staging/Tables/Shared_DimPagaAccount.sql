CREATE TABLE [Staging].[Shared_DimPagaAccount] (
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
    [SourceKey]                     VARCHAR (255) NOT NULL,
    [DimPagaAccountStatusSourceKey] VARCHAR (255) NOT NULL,
    [change_operation]              CHAR (1)      DEFAULT ((1)) NOT NULL
);












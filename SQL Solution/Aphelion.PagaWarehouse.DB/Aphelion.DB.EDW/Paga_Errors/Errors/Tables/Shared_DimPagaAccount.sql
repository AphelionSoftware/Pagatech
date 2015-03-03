CREATE TABLE [Errors].[Shared_DimPagaAccount] (
    [QueueID]                       INT           NOT NULL,
    [SSISErrorCode]                 INT           NOT NULL,
    [SSISErrorColumn]               INT           NOT NULL,
    [PackageName]                   VARCHAR (255) NOT NULL,
    [ErrorType]                     VARCHAR (255) NOT NULL,
    [BankingStatus]                 VARCHAR (50)  NOT NULL,
    [DimCreatedDateID]              INT           NOT NULL,
    [DimPagaAccountStatusSourceKey] VARCHAR (255) NOT NULL,
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
    [DimRegistrationDateID]         INT           NULL,
    [SourceKey]                     INT           NOT NULL
);












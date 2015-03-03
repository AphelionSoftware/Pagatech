CREATE TABLE [Updates].[Shared_DimPagaAccount] (
    [SourceKey]              INT           NOT NULL,
    [Name]                   VARCHAR (255) NOT NULL,
    [DimPagaAccountStatusID] INT           NOT NULL,
    [DimCreatedDateID]       INT           NOT NULL,
    [DimRegistrationDateID]  INT           NULL,
    [PagaAccountNumber]      VARCHAR (12)  NULL,
    [ExternalAccountNumber]  VARCHAR (12)  NULL,
    [BankingStatus]          VARCHAR (50)  NOT NULL,
    [hasOnlineAccount]       BIT           NULL,
    [IsActivePagaAccount]    BIT           NULL,
    [IsEnabled]              BIT           NULL,
    [IsAffiliate]            BIT           NULL,
    [IsAgent]                BIT           NULL,
    [IsBank]                 BIT           NULL,
    [IsBusiness]             BIT           NULL,
    [IsCardProcessor]        BIT           NULL,
    [IsCashCollector]        BIT           NULL,
    [IsCustomer]             BIT           NULL,
    [IsMerchant]             BIT           NULL,
    [IsMobileOperator]       BIT           NULL,
    [IsPaga]                 BIT           NULL,
    [IsRemittanceProcessor]  BIT           NULL,
    [IsServiceAggregator]    BIT           NULL,
    [SYS_CHANGE_VERSION]     BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]   CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Shared_DimPagaAccount_SourceKey]
    ON [Updates].[Shared_DimPagaAccount]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);


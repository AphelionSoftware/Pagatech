CREATE TABLE [Errors].[Shared_DimPagaAccount] (
    [QueueID]                       INT           NOT NULL,
    [SSISErrorCode]                 INT           NOT NULL,
    [SSISErrorColumn]               INT           NOT NULL,
    [PackageName]                   VARCHAR (255) NOT NULL,
    [ErrorType]                     VARCHAR (255) NOT NULL,
    [affiliate]                     BIT           NULL,
    [agent]                         BIT           NULL,
    [bank]                          BIT           NULL,
    [BankingStatus]                 VARCHAR (50)  NOT NULL,
    [business]                      BIT           NULL,
    [card_processor]                BIT           NULL,
    [cash_collector]                BIT           NULL,
    [change_operation]              CHAR (1)      NOT NULL,
    [CreatedDateID]                 INT           NOT NULL,
    [customer]                      BIT           NULL,
    [DimPagaAccountStatusSourceKey] VARCHAR (255) NOT NULL,
    [ExternalAccountNumber]         VARCHAR (12)  NULL,
    [HasOnlineAccount]              BIT           NOT NULL,
    [IsActive]                      BIT           NOT NULL,
    [IsEnabled]                     BIT           NOT NULL,
    [merchant]                      BIT           NULL,
    [mobile_operator]               BIT           NULL,
    [Name]                          VARCHAR (255) NOT NULL,
    [paga]                          BIT           NULL,
    [PagaAccountNumber]             VARCHAR (12)  NULL,
    [RegistrationDateID]            INT           NULL,
    [remittance_processor]          BIT           NULL,
    [service_aggregator]            BIT           NULL,
    [SourceKey]                     VARCHAR (255) NOT NULL
);




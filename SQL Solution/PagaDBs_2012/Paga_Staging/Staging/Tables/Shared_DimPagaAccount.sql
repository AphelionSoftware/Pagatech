CREATE TABLE [Staging].[Shared_DimPagaAccount] (
    [BankingStatus]                   VARCHAR (50)  NOT NULL,
    [ExternalAccountNumber]           VARCHAR (12)  NULL,
    [Name]                            VARCHAR (255) NOT NULL,
    [PagaAccountNumber]               VARCHAR (12)  NULL,
    [SourceKey]                       VARCHAR (255) NOT NULL,
       [CreatedDateID]       INT           NOT NULL,
	[RegistrationDateID]       INT           NULL,
    [DimPagaAccountStatusSourceKey]   VARCHAR (255) NOT NULL,
	HasOnlineAccount	BIT	NOT NULL,
	IsActive BIT NOT NULL,
	IsEnabled BIT NOT NULL,
	[affiliate] BIT SPARSE, 
	[agent] BIT SPARSE, 
	[bank] BIT SPARSE, 
	[business] BIT SPARSE, 
	[card_processor] BIT SPARSE, 
	[cash_collector] BIT SPARSE, 
	[customer] BIT SPARSE, 
	[merchant] BIT SPARSE, 
	[mobile_operator] BIT SPARSE, 
	[paga] BIT SPARSE, 
	[remittance_processor] BIT SPARSE, 
	[service_aggregator] BIT SPARSE, 
    [change_operation]                CHAR (1)      DEFAULT ((1)) NOT NULL
);










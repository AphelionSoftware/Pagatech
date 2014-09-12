CREATE TABLE [Shared].[DimPagaAccount] (
    [DimPagaAccountID]       INT           NOT NULL,
    [SourceKey]              VARCHAR (255) NOT NULL,
    [Name]                   VARCHAR (255) NOT NULL,
    [DimPagaAccountStatusID] INT           NOT NULL,
    [CreatedDateID]          INT           NOT NULL,
    [RegistrationDateID]     INT           NULL,
    [PagaAccountNumber]      VARCHAR (12)  NULL,
    [ExternalAccountNumber]  VARCHAR (12)  NULL,
    [BankingStatus]          VARCHAR (50)  NOT NULL,
    [hasOnlineAccount]       BIT           NULL,
    [IsActive]               BIT           NULL,
    [IsEnabled]              BIT           NULL,
    [IsAffiliate]              BIT SPARSE    NULL,
    [IsAgent]                  BIT SPARSE    NULL,
    [IsBank]                   BIT SPARSE    NULL,
    [IsBusiness]               BIT SPARSE    NULL,
    [IsCardProcessor]         BIT SPARSE    NULL,
    [IsCashCollector]         BIT SPARSE    NULL,
    [IsCustomer]               BIT SPARSE    NULL,
    [IsMerchant]               BIT SPARSE    NULL,
    [IsMobileOperator]        BIT SPARSE    NULL,
    [IsPaga]                   BIT SPARSE    NULL,
    [IsRemittanceProcessor]   BIT SPARSE    NULL,
    [IsServiceAggregator]     BIT SPARSE    NULL,
    [SourceKeyHash]          BIGINT        NOT NULL,
    [DeltaHash]              BIGINT        NOT NULL,
    [sys_ModifiedBy]         VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]          VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]          DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimPagaAccountID] PRIMARY KEY CLUSTERED ([DimPagaAccountID] ASC),
    CONSTRAINT [fk_DimPagaAccount_DimPagaAccountStatusID] FOREIGN KEY ([DimPagaAccountStatusID]) REFERENCES [Classification].[DimPagaAccountStatus] ([DimPagaAccountStatusID])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimPagaAccount_SourceKey]
    ON [Shared].[DimPagaAccount]([SourceKey] ASC);


GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'RegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromOLAP', @value = N'true', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'RegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'PagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'ExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'BankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'hasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'IsActive';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'IsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.PagaAccount', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'PagaAccountId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	Name, 
	DimPagaAccountStatusSourceKey, 
	CreatedDateID,
	RegistrationDateID, 
	PagaAccountNumber, 
	ExternalAccountNumber, 
	BankingStatus, 
	hasOnlineAccount, 
	IsActive, 
	IsEnabled, 
	affiliate, 
	agent, 
	bank, 
	business, 
	card_processor, 
	cash_collector, 
	customer, 
	merchant, 
	mobile_operator, 
	paga, 
	remittance_processor, 
	service_aggregator,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
FROM 
(
	SELECT
		SourceKey = pa1.PagaAccountId,
		Name = pa1.PagaAccountNumber,
		DimPagaAccountStatusSourceKey = pa1.PagaAccountStatusId,
		CreatedDateID = CONVERT(INT,(CONVERT(VARCHAR(8),pa1.CreatedDate,112))), 
		RegistrationDateID = COALESCE(CONVERT(INT,(CONVERT(VARCHAR(8),pa1.RegistrationDate,112))),NULL),
		pa1.PagaAccountNumber, 
		pa1.ExternalAccountNumber, 
		BankingStatus = pa1.BankingStatusId, 
		pa1.hasOnlineAccount, 
		pa1.IsActive, 
		pa1.IsEnabled, 
		pa2.affiliate,
		pa2.agent,
		pa2.bank,
		pa2.business,
		pa2.card_processor,
		pa2.cash_collector,
		pa2.customer,
		pa2.merchant,
		pa2.mobile_operator,
		pa2.paga,
		pa2.remittance_processor,
		pa2.service_aggregator
	FROM dbo.PagaAccount as pa1
	LEFT JOIN
	(
		SELECT
			pa.PagaAccountId, 
			MAX(CASE WHEN pan.NatureId = ''AFFILIATE'' THEN 1 ELSE NULL END) AS ''affiliate'',
			MAX(CASE WHEN pan.NatureId = ''AGENT'' THEN 1 ELSE NULL END) AS ''agent'',
			MAX(CASE WHEN pan.NatureId = ''BANK'' THEN 1 ELSE NULL END) AS ''bank'',
			MAX(CASE WHEN pan.NatureId = ''BUSINESS'' THEN 1 ELSE NULL END) AS ''business'',
			MAX(CASE WHEN pan.NatureId = ''CARD_PROCESSOR'' THEN 1 ELSE NULL END) AS ''card_processor'',
			MAX(CASE WHEN pan.NatureId = ''CASH_COLLECTOR'' THEN 1 ELSE NULL END) AS ''cash_collector'',
			MAX(CASE WHEN pan.NatureId = ''CUSTOMER'' THEN 1 ELSE NULL END) AS ''customer'',
			MAX(CASE WHEN pan.NatureId = ''MERCHANT'' THEN 1 ELSE NULL END) AS ''merchant'',
			MAX(CASE WHEN pan.NatureId = ''MOBILE_OPERATOR'' THEN 1 ELSE NULL END) AS ''mobile_operator'',
			MAX(CASE WHEN pan.NatureId = ''PAGA'' THEN 1 ELSE NULL END) AS ''paga'',
			MAX(CASE WHEN pan.NatureId = ''REMITTANCE_PROCESSOR'' THEN 1 ELSE NULL END) AS ''remittance_processor'',
			MAX(CASE WHEN pan.NatureId = ''SERVICE_AGGREGATOR'' THEN 1 ELSE NULL END) AS ''service_aggregator''
		FROM dbo.PagaAccount AS pa
		INNER JOIN dbo.PagaAccountNature as pan ON
			pa.PagaAccountId = pan.PagaAccountId
		GROUP BY
			pa.PagaAccountId
		) AS pa2 ON
			pa1.PagaAccountId = pa2.PagaAccountId
) AS base_query
	', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount';


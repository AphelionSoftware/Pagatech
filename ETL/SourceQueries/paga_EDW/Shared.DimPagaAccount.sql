SELECT 
	SourceKey,
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
	IsAffiliate, 
	IsAgent, 
	IsBank, 
	IsBusiness, 
	IsCardProcessor, 
	IsCashCollector, 
	IsCustomer, 
	IsMerchant, 
	IsMobileOperator, 
	IsPaga, 
	IsRemittanceProcessor, 
	IsServiceAggregator
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
		IsAffiliate = pa2.affiliate,
		IsAgent = pa2.agent,
		IsBank = pa2.bank,
		IsBusiness = pa2.business,
		IsCardProcessor = pa2.card_processor,
		IsCashCollector = pa2.cash_collector,
		IsCustomer = pa2.customer,
		IsMerchant = pa2.merchant,
		IsMobileOperator = pa2.mobile_operator,
		IsPaga = pa2.paga,
		IsRemittanceProcessor = pa2.remittance_processor,
		IsServiceAggregator = pa2.service_aggregator
	FROM dbo.PagaAccount as pa1
	LEFT JOIN
	(
		SELECT
			pa.PagaAccountId, 
			MAX(CASE WHEN pan.NatureId = 'AFFILIATE' THEN 1 ELSE NULL END) AS 'affiliate',
			MAX(CASE WHEN pan.NatureId = 'AGENT' THEN 1 ELSE NULL END) AS 'agent',
			MAX(CASE WHEN pan.NatureId = 'BANK' THEN 1 ELSE NULL END) AS 'bank',
			MAX(CASE WHEN pan.NatureId = 'BUSINESS' THEN 1 ELSE NULL END) AS 'business',
			MAX(CASE WHEN pan.NatureId = 'CARD_PROCESSOR' THEN 1 ELSE NULL END) AS 'card_processor',
			MAX(CASE WHEN pan.NatureId = 'CASH_COLLECTOR' THEN 1 ELSE NULL END) AS 'cash_collector',
			MAX(CASE WHEN pan.NatureId = 'CUSTOMER' THEN 1 ELSE NULL END) AS 'customer',
			MAX(CASE WHEN pan.NatureId = 'MERCHANT' THEN 1 ELSE NULL END) AS 'merchant',
			MAX(CASE WHEN pan.NatureId = 'MOBILE_OPERATOR' THEN 1 ELSE NULL END) AS 'mobile_operator',
			MAX(CASE WHEN pan.NatureId = 'PAGA' THEN 1 ELSE NULL END) AS 'paga',
			MAX(CASE WHEN pan.NatureId = 'REMITTANCE_PROCESSOR' THEN 1 ELSE NULL END) AS 'remittance_processor',
			MAX(CASE WHEN pan.NatureId = 'SERVICE_AGGREGATOR' THEN 1 ELSE NULL END) AS 'service_aggregator'
		FROM dbo.PagaAccount AS pa
		INNER JOIN dbo.PagaAccountNature as pan ON
			pa.PagaAccountId = pan.PagaAccountId
		GROUP BY
			pa.PagaAccountId
		) AS pa2 ON
			pa1.PagaAccountId = pa2.PagaAccountId
) AS base_query

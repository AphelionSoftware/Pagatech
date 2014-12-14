
  

CREATE VIEW test.payment_analysis
AS
(
SELECT 
	h.[Amount] 
	,h.[CancelledFactFinancialTxHeaderID] 
	,h.[DimCreatedDateID] 
	,h.[DimCreatedTimeID] 
	,h.[DimCurrencyID] 
	,h.[DimEffectiveDateID] 
	,h.[DimEffectiveTimeID] 
	,h.[DimFinancialTxSubTypeID]
	,h.[DimFinancialTxTypeID]
	,h.[DimOrganizationUnitLevel4ID] 
	,h.[DimTransactionDateID] 
	,h.[DimTransactionTimeID] 
	,h.[DimUserID] 
	,h.[ExchangeRate] 
	,h.[ExternalReferenceNumber] 
	,h.[FactFinancialTxHeaderID] 
	,h.[FactProcessTxID]
	,h.[Fee] 
	,h.[ForeignCurrencyAmount] 
	,h.[OriginalFactFinancialTxHeaderID] 
	,h.[ReferenceNumber] 
	,h.[RelatedFactFinancialTxHeaderID] 
	,h.[ShortCode] 
	,h.[SourceKey] 
	,h.[TextDescription] 
	,h.[Void] 
	,map.PaymentUseCaseToTxTypeMapID
FROM [Finance].[FactFinancialTxHeader] AS h
INNER JOIN Mapping.PaymentUseCaseToTxTypeMap AS map ON
	h.DimFinancialTxTypeID = map.DimFinancialTxTypeID
WHERE
	h.DimTransactionDateID >=20140701
	AND h.DimTransactionDateID <=20140731

)
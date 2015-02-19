	
CREATE VIEW OLAP.Finance_FactFinancialTransaction AS
	(
		SELECT 
			edw.FactFinancialTxID,edw.SourceKey,edw.DimEffectiveDateID,edw.DimEffectiveTimeID,edw.DimFinancialTxDateID,edw.DimFinancialTxTimeID,edw.DimFinancialTxTypeID,edw.DimUserID,edw.FactProcessEventID,edw.Reversed,edw.FactRelatedFinancialTxID,edw.FactOriginalFinancialTxID,edw.DimCurrencyID,edw.TextDescription,edw.FinancialTx_Amount,edw.ExchangeRate,edw.ExternalReferenceNumber,edw.FinancialTx_Fee,edw.ForeignCurrencyAmount,edw.ReferenceNumber,edw.ShortCode,edw.Cancelled,edw.IsIntegrationTx,edw.FactIntegrationTxID
		FROM Finance.FactFinancialTransaction AS edw
		WHERE edw.IsActive = 1
	);
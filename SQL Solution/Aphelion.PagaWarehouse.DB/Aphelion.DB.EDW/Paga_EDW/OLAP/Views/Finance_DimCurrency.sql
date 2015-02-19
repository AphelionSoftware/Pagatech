	
CREATE VIEW OLAP.Finance_DimCurrency AS
	(
		SELECT 
			edw.DimCurrencyID,edw.SourceKey,edw.Name,edw.ISOCode,edw.Symbol
		FROM Finance.DimCurrency AS edw
		WHERE edw.IsActive = 1
	);
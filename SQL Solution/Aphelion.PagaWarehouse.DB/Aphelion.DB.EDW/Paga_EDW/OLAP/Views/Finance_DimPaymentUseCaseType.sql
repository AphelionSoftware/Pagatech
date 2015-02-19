	
CREATE VIEW OLAP.Finance_DimPaymentUseCaseType AS
	(
		SELECT 
			edw.DimPaymentUseCaseTypeID,edw.SourceKey,edw.Name
		FROM Finance.DimPaymentUseCaseType AS edw
		WHERE edw.IsActive = 1
	);
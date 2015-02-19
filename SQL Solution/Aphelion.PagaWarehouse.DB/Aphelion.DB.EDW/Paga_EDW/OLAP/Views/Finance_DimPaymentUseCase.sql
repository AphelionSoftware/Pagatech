	
CREATE VIEW OLAP.Finance_DimPaymentUseCase AS
	(
		SELECT 
			edw.DimPaymentUseCaseID,edw.DimPaymentUseCaseTypeID,edw.SourceKey,edw.Name
		FROM Finance.DimPaymentUseCase AS edw
		WHERE edw.IsActive = 1
	);
	
CREATE VIEW OLAP.Shared_FactIntegrationTransaction AS
	(
		SELECT 
			edw.FactIntegrationTxID,edw.SourceKey,edw.DimIntegrationTxDateID,edw.DimIntegrationTxTimeID,edw.DimExternalOrganizationID,edw.DimUserID,edw.DimIntegrationTxTypeID,edw.DimProcessTypeID,edw.DimIntegrationTxResultID,edw.ExternalReferenceNumber,edw.MessageText,edw.IntegrationTx_Amount,edw.HasFinancialTx,edw.FactFinancialTxID
		FROM Shared.FactIntegrationTransaction AS edw
		WHERE edw.IsActive = 1
	);
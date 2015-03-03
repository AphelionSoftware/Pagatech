
MERGE  Paga_EDW.shared.FactIntegrationTransaction AS Target
USING 
(
		SELECT
				x.*
		FROM
		(
			SELECT
				ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
				stg.*
			FROM Paga_Staging.updates.Shared_FactIntegrationTransaction AS stg
			INNER JOIN
			(
			SELECT DISTINCT SourceKey from Paga_Staging.staging.Shared_FactIntegrationTransaction 
			EXCEPT
			SELECT edw.sourcekey FROM Shared.FactIntegrationTransaction as edw
			) AS list ON 
				stg.sourcekey = list.sourcekey
		) as x
		WHERE x.rn = 1

) AS Source ON 
	Target.sourcekey = Source.sourcekey


WHEN MATCHED  
THEN
	UPDATE SET 
	Target.DimIntegrationTxDateID = Source.DimIntegrationTxDateID,Target.DimIntegrationTxTimeID = Source.DimIntegrationTxTimeID,Target.DimExternalOrganizationID = Source.DimExternalOrganizationID,Target.DimUserID = Source.DimUserID,Target.DimIntegrationTxTypeID = Source.DimIntegrationTxTypeID,Target.DimProcessTypeID = Source.DimProcessTypeID,Target.DimIntegrationTxResultID = Source.DimIntegrationTxResultID,Target.ExternalReferenceNumber = Source.ExternalReferenceNumber,Target.MessageText = Source.MessageText,Target.IntegrationTx_Amount = Source.IntegrationTx_Amount,Target.HasFinancialTx = Source.HasFinancialTx,Target.FactFinancialTxID = Source.FactFinancialTxID,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
WHEN NOT MATCHED BY TARGET
THEN
	INSERT 
	(
		SourceKey,DimIntegrationTxDateID,DimIntegrationTxTimeID,DimExternalOrganizationID,DimUserID,DimIntegrationTxTypeID,DimProcessTypeID,DimIntegrationTxResultID,ExternalReferenceNumber,MessageText,IntegrationTx_Amount,HasFinancialTx,FactFinancialTxID,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
	)
	VALUES 
	(
		Source.SourceKey, Source.DimIntegrationTxDateID,Source.DimIntegrationTxTimeID,Source.DimExternalOrganizationID,Source.DimUserID,Source.DimIntegrationTxTypeID,Source.DimProcessTypeID,Source.DimIntegrationTxResultID,Source.ExternalReferenceNumber,Source.MessageText,Source.IntegrationTx_Amount,Source.HasFinancialTx,Source.FactFinancialTxID,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
	);
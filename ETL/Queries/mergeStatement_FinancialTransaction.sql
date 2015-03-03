USE Paga_EDW;
GO

MERGE  Paga_EDW.Finance.FactFinancialTransaction AS Target
USING 
(
		SELECT
				x.*
		FROM
		(
			SELECT
				ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
				stg.*
			FROM Paga_Staging.Updates.Finance_FactFinancialTransaction AS stg
			INNER JOIN
			(
			SELECT DISTINCT SourceKey from Paga_Staging.staging.Finance_FactFinancialTransaction
			EXCEPT
			SELECT edw.sourcekey FROM Finance.FactFinancialTransaction as edw
			) AS list ON 
				stg.sourcekey = list.sourcekey
		) as x
		WHERE x.rn = 1

) AS Source ON 
	Target.sourcekey = Source.sourcekey


WHEN MATCHED  
THEN
	UPDATE SET 
	Target.DimEffectiveDateID = Source.DimEffectiveDateID,Target.DimEffectiveTimeID = Source.DimEffectiveTimeID,Target.DimFinancialTxDateID = Source.DimFinancialTxDateID,Target.DimFinancialTxTimeID = Source.DimFinancialTxTimeID,Target.DimFinancialTxTypeID = Source.DimFinancialTxTypeID,Target.DimUserID = Source.DimUserID,Target.FactProcessEventID = Source.FactProcessEventID,Target.Reversed = Source.Reversed,Target.FactRelatedFinancialTxID = Source.FactRelatedFinancialTxID,Target.FactOriginalFinancialTxID = Source.FactOriginalFinancialTxID,Target.DimCurrencyID = Source.DimCurrencyID,Target.TextDescription = Source.TextDescription,Target.FinancialTx_Amount = Source.FinancialTx_Amount,Target.ExchangeRate = Source.ExchangeRate,Target.ExternalReferenceNumber = Source.ExternalReferenceNumber,Target.FinancialTx_Fee = Source.FinancialTx_Fee,Target.ForeignCurrencyAmount = Source.ForeignCurrencyAmount,Target.ReferenceNumber = Source.ReferenceNumber,Target.ShortCode = Source.ShortCode,Target.Cancelled = Source.Cancelled,Target.IsIntegrationTx = Source.IsIntegrationTx,Target.FactIntegrationTxID = Source.FactIntegrationTxID,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
WHEN NOT MATCHED BY TARGET
THEN
	INSERT 
	(
		SourceKey,DimEffectiveDateID,DimEffectiveTimeID,DimFinancialTxDateID,DimFinancialTxTimeID,DimFinancialTxTypeID,DimUserID,FactProcessEventID,Reversed,FactRelatedFinancialTxID,FactOriginalFinancialTxID,DimCurrencyID,TextDescription,FinancialTx_Amount,ExchangeRate,ExternalReferenceNumber,FinancialTx_Fee,ForeignCurrencyAmount,ReferenceNumber,ShortCode,Cancelled,IsIntegrationTx,FactIntegrationTxID,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
	)
	VALUES 
	(
		Source.SourceKey, Source.DimEffectiveDateID,Source.DimEffectiveTimeID,Source.DimFinancialTxDateID,Source.DimFinancialTxTimeID,Source.DimFinancialTxTypeID,Source.DimUserID,Source.FactProcessEventID,Source.Reversed,Source.FactRelatedFinancialTxID,Source.FactOriginalFinancialTxID,Source.DimCurrencyID,Source.TextDescription,Source.FinancialTx_Amount,Source.ExchangeRate,Source.ExternalReferenceNumber,Source.FinancialTx_Fee,Source.ForeignCurrencyAmount,Source.ReferenceNumber,Source.ShortCode,Source.Cancelled,Source.IsIntegrationTx,Source.FactIntegrationTxID,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
	);
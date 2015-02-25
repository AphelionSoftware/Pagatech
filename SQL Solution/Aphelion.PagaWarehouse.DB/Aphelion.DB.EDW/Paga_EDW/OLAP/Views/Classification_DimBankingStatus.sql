
CREATE VIEW [OLAP].[Classification_DimBankingStatus] AS
	(
		SELECT 
			ROW_NUMBER() OVER (ORDER BY BankingStatus DESC) AS DimBankingStatusID,
			BankingStatus
		FROM
		( 
			SELECT DISTINCT 
				BankingStatus 
			FROM shared.DimPagaAccount
		) AS bs
	);
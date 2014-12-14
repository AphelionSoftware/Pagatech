



CREATE VIEW [test].[Test_MMO_PaymentAnalysis]
AS
(

	SELECT 
		ft.FactFinancialTxHeaderID,
		ft.SourceKey AS FactFinancialTxHeaderSourceKey,
		ft.DimTransactionDateID,
		map.PaymentUseCaseToTxTypeMapID,
		ftt.DimFinancialTxTypeID,
		ftt.SourceKey as FinancialTransactionTypeId,
		ft.OriginalFactFinancialTxHeaderID,
		ft.RelatedFactFinancialTxHeaderID,
		p.FactProcessTxID,
		p.SourceKey AS FactProcessTxSourceKey,
		pt.Name AS ProcessType,
		ft.DimUserID,
		DimInitiatingUserID = COALESCE(p.DimOnBehalffUserID,p.DimInitiatingUserID),
		p.DimOnBehalffUserID,
		p.DimReceivingUserID,
		CASE 
			WHEN c.Name = 'ATM' THEN 'ATM'
			WHEN p.DimOnBehalffUserID IS NOT NULL THEN 'AGENT'
			ELSE 'PERSONAL'
		END AS MMO_PaymentAnalysis_ProcessChannel,
		c.Name AS Acutal_ProcessChannel,
		ps.Name AS ProcessStatus,
		ft.Amount,
		ft.void
	FROM Activity.FactProcessTx  AS p
	INNER JOIN Classification.DimProcessType AS pt on 
		p.DimProcessTypeID = pt.DimProcessTypeID
	INNER JOIN Classification.DimProcessStatus AS ps ON
		ps.DimProcessStatusID = p.DimProcessStatusID
	INNER JOIN Activity.DimChannel AS c ON
		p.DimChannelID = c.DimChannelID
	INNER JOIN Finance.FactFinancialTxHeader AS ft ON
		ft.FactProcessTxID = p.FactProcessTxID
	INNER JOIN Classification.DimFinancialTxType AS ftt ON
		ft.DimFinancialTxTypeID = ftt.DimFinancialTxTypeID
	INNER JOIN mapping.PaymentUseCaseToTxTypeMap AS map ON
		ftt.DimFinancialTxTypeID = map.DimFinancialTxTypeID
	WHERE
		ft.DimTransactionDateID >= 20140701
		AND ft.DimTransactionDateID <= 20140731
)

MERGE  Paga_EDW.shared.DimPagaAccount AS Target
USING 
(
	SELECT
		x.SourceKey, x.Name,y.DimPagaAccountStatusID,x.CreatedDateID,x.RegistrationDateID,PagaAccountNumber,ExternalAccountNumber,BankingStatus,hasOnlineAccount,IsActivePagaAccount,IsEnabled,IsAffiliate,IsAgent,IsBank,IsBusiness,IsCardProcessor,IsCashCollector,IsCustomer,IsMerchant,IsMobileOperator,IsPaga,IsRemittanceProcessor,IsServiceAggregator,x.SYS_CHANGE_VERSION,x.SYS_CHANGE_OPERATION
	FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
			stg.*
		FROM Paga_Staging_Initial.staging.Shared_DimPagaAccount2 AS stg
		INNER JOIN
		(
		SELECT DISTINCT SourceKey from Paga_Staging_Initial.staging.Shared_DimPagaAccount2 WHERE SYS_CHANGE_VERSION > 0
		EXCEPT
		SELECT ha.sourcekey FROM shared.DimPagaAccount as ha
		) AS list ON 
			stg.sourcekey = list.sourcekey
	) as x
	INNER JOIN paga_edw.[Classification].[DimPagaAccountStatus] AS y ON
		x.DimPagaAccountStatusSourceKey = y.SourceKey
	WHERE
		x.rn = 1
) AS Source ON 
	Target.sourcekey = Source.sourcekey


WHEN MATCHED  
THEN
	UPDATE SET 
		Target.Name = Source.Name,Target.DimPagaAccountStatusID = Source.DimPagaAccountStatusID,Target.DimCreatedDateID = Source.CreatedDateID,Target.DimRegistrationDateID = Source.RegistrationDateID,Target.PagaAccountNumber = Source.PagaAccountNumber,Target.ExternalAccountNumber = Source.ExternalAccountNumber,Target.BankingStatus = Source.BankingStatus,Target.hasOnlineAccount = Source.hasOnlineAccount,Target.IsActivePagaAccount = Source.IsActivePagaAccount,Target.IsEnabled = Source.IsEnabled,Target.IsAffiliate = Source.IsAffiliate,Target.IsAgent = Source.IsAgent,Target.IsBank = Source.IsBank,Target.IsBusiness = Source.IsBusiness,Target.IsCardProcessor = Source.IsCardProcessor,Target.IsCashCollector = Source.IsCashCollector,Target.IsCustomer = Source.IsCustomer,Target.IsMerchant = Source.IsMerchant,Target.IsMobileOperator = Source.IsMobileOperator,Target.IsPaga = Source.IsPaga,Target.IsRemittanceProcessor = Source.IsRemittanceProcessor,Target.IsServiceAggregator = Source.IsServiceAggregator,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
	
WHEN NOT MATCHED BY TARGET
THEN
	INSERT 
	(
		SourceKey, Name,DimPagaAccountStatusID,DimCreatedDateID,DimRegistrationDateID,PagaAccountNumber,ExternalAccountNumber,BankingStatus,hasOnlineAccount,IsActivePagaAccount,IsEnabled,IsAffiliate,IsAgent,IsBank,IsBusiness,IsCardProcessor,IsCashCollector,IsCustomer,IsMerchant,IsMobileOperator,IsPaga,IsRemittanceProcessor,IsServiceAggregator,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
	)
	VALUES 
	(
		Source.SourceKey, Source.Name,Source.DimPagaAccountStatusID,Source.CreatedDateID,Source.RegistrationDateID,Source.PagaAccountNumber,Source.ExternalAccountNumber,Source.BankingStatus,Source.hasOnlineAccount,Source.IsActivePagaAccount,Source.IsEnabled,Source.IsAffiliate,Source.IsAgent,Source.IsBank,Source.IsBusiness,Source.IsCardProcessor,Source.IsCashCollector,Source.IsCustomer,Source.IsMerchant,Source.IsMobileOperator,Source.IsPaga,Source.IsRemittanceProcessor,Source.IsServiceAggregator,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
	);
	
CREATE VIEW OLAP.Shared_DimPagaAccount AS
	(
		SELECT 
			edw.DimPagaAccountID,edw.SourceKey,edw.Name,edw.DimPagaAccountStatusID,edw.CreatedDateID,edw.RegistrationDateID,edw.PagaAccountNumber,edw.ExternalAccountNumber,edw.BankingStatus,edw.hasOnlineAccount,edw.IsActivePagaAccount,edw.IsEnabled,edw.IsAffiliate,edw.IsAgent,edw.IsBank,edw.IsBusiness,edw.IsCardProcessor,edw.IsCashCollector,edw.IsCustomer,edw.IsMerchant,edw.IsMobileOperator,edw.IsPaga,edw.IsRemittanceProcessor,edw.IsServiceAggregator
		FROM Shared.DimPagaAccount AS edw
		WHERE edw.IsActive = 1
	);
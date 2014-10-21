
CREATE VIEW [OLAP].[Test_DimPagaAccount]
AS
(
	SELECT
		pa.DimPagaAccountID,
		pa.SourceKey AS DimPagaAccountSourceKey,
		pa.PagaAccountNumber,
		pas.SourceKey AS DimPagaAccountStatus,
		pa.BankingStatus AS DimPagaAccountBankingStatus,
		pa.IsActive AS DimPagaAccountIsActive,
		pa.IsEnabled AS DimPagaAccountIsEnabled, 
		IsAffiliate, 
		IsAgent, 
		IsBank, 
		IsBusiness, 
		IsCardProcessor, 
		IsCashCollector, 
		IsCustomer, 
		IsMerchant, 
		IsMobileOperator, 
		IsPaga, 
		IsRemittanceProcessor, 
		IsServiceAggregator
	FROM Shared.DimPagaAccount AS pa 
	INNER JOIN Classification.DimPagaAccountStatus AS pas ON
		pa.DimPagaAccountStatusID = pas.DimPagaAccountStatusID
)


CREATE VIEW [test].[Test_DimFinancialAccount]
AS
(
	SELECT 
		fa.DimFinancialAccountID, 
		fa.SourceKey AS DimFinancialAccountSourceKey, 
		fa.Name AS DimFinancialAccountName, 
		fa.DimFinancialHoldingAccountID, 
		fah.SourceKey AS DimFinancialHoldingAccountSourceKey,
		fah.AccountNumber AS DimFinancialHoldingAccountNumber,
		fah.Name DimFinancialHoldingAccountName,
		fa.DimFinancialAccountTypeID, 
		fa.DimPagaAccountID,
		fa.DimBankAccountID,
		fa.AccountNumber,
		c.ISOCode AS CurrencyCode,
		c.Name AS CurrencyName
	FROM [Finance].[DimFinancialAccount] AS fa	
	INNER JOIN Finance.DimCurrency AS c ON
		fa.DimCurrencyID = c.DimCurrencyID
	LEFT JOIN Finance.DimFinancialHoldingAccount AS fah ON
		fa.SourceKey = fah.SourceKey
)
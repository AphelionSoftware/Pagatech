	
	CREATE VIEW dbo.FinancialAccount AS
	(
			SELECT [FinancialAccountId], [AccountCodeId], [AccountNumber], [BankAccountId], [CreatedDate], [CurrencyId], [FinancialAccountTypeId], [RestrictedBalance], [TotalBalance], [UpdatedDate], [AccountHolderId], [HoldingFinancialAccountId], [OpeningBalance] FROM paga.dbo.FinancialAccount	
	);

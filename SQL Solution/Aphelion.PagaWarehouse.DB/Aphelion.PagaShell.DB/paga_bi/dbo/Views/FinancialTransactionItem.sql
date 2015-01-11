	
	CREATE VIEW dbo.FinancialTransactionItem AS
	(
			SELECT [FinancialTransactionItemId], [AccountCodeId], [CreatedDate], [CreditAmount], [DebitAmount], [Description], [FinancialAccountId], [FinancialTransactionId], [TransactionLineNumber], [UpdatedDate] FROM paga.dbo.FinancialTransactionItem	
	);

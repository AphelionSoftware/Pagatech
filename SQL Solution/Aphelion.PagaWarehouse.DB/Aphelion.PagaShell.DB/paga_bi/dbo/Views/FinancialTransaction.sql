	
	CREATE VIEW dbo.FinancialTransaction AS
	(
			SELECT [FinancialTransactionId], [Amount], [CreatedDate], [Description], [ExternalReferenceNumber], [Fee], [FinancialTransactionTypeId], [ReferenceNumber], [ShortCode], [TransactionDate], [UpdatedDate], [UserId], [ProcessId], [ReversedBy], [Reverses], [CurrencyId], [ExchangeRate], [__Reverses], [__ReversedBy], [ForeignCurrencyAmount], [FinancialTransactionSubTypeId] FROM paga.dbo.FinancialTransaction	
	);

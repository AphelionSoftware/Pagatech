	
	CREATE VIEW dbo.IntegrationTransaction AS
	(
			SELECT [IntegrationTransactionId], [Amount], [CreatedDate], [ExternalOrganizationId], [ExternalOrganizationName], [ExternalReferenceNumber], [FinancialTransactionId], [IntegrationTransactionResultId], [IntegrationTransactionTimestamp], [IntegrationTransactionTypeId], [Message], [UserId], [ProcessCode], [ProcessTypeId], [ReconciliationItemId], [UpdatedDate] FROM paga.dbo.IntegrationTransaction	
	);

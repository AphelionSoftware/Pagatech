	
	CREATE VIEW dbo.FinancialTransactionRelationship AS
	(
			SELECT [FinancialTransactionRelationshipId], [CreatedDate], [FinancialTransactionRelationshipTypeId], [PrimaryFinancialTransactionId], [SecondaryFinancialTransactionId], [UpdatedDate] FROM paga.dbo.FinancialTransactionRelationship	
	);

	
	CREATE VIEW dbo.Bank AS
	(
			SELECT [BankId], [BankName], [CreatedDate], [UpdatedDate], [OrganizationId], [BankAccountLinkTypeId], [SupportsDebit], [SupportsCredit] FROM paga.dbo.Bank	
	);

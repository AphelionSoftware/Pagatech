	
	CREATE VIEW dbo.AccountCode AS
	(
			SELECT [AccountCodeId], [AccountCodeGroupId], [Code], [CreatedDate], [Description], [IsNormalDebit], [Key], [Name], [UpdatedDate] FROM paga.dbo.AccountCode	
	);

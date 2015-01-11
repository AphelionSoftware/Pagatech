	
	CREATE VIEW dbo.AccountCodeGroup AS
	(
			SELECT [AccountCodeGroupId], [AccountCodeGroupEnd], [AccountCodeGroupStart], [CreatedDate], [Description], [ParentAccountCodeGroupId], [UpdatedDate] FROM paga.dbo.AccountCodeGroup	
	);

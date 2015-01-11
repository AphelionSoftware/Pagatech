	
	CREATE VIEW dbo.BankAccount AS
	(
		SELECT [BankAccountId], [AccountHolderName], [BankId], [BranchName], [CreatedDate], [KYCId], [UpdatedDate], [BankAccountLinkStatusTypeId], [BankAccountLinkStatusComment], [AccountAlias], [TransactionLimit], [DurationLimit], [DurationLimitSeconds], [IsEnabled] FROM paga.dbo.BankAccount
		
	);

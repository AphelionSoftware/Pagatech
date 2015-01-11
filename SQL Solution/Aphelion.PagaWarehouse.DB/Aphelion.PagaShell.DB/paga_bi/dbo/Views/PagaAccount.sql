	
	CREATE VIEW dbo.PagaAccount AS
	(
		
		SELECT [PagaAccountId], [BankingStatusId], [CreatedDate], [ExternalAccountNumber], [hasOnlineAccount], [IsActive], [IsEnabled], [PagaAccountNumber], [PagaAccountStatusId], [UpdatedDate], [AccountHolderId], [RegistrationDate] FROM paga.dbo.PagaAccount
		
	);

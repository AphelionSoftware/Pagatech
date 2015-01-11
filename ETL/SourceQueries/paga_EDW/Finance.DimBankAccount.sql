SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	AccountAlias, 
	AccountHolderName, 
	AccountLinkIdentifier, 
	BankAccountLinkStatusComment, 
	BankAccountLinkStatusType = COALESCE(BankAccountLinkStatusType, 'UNKNOWN'), 
	BranchName, 
	DurationLimit, 
	DurationLimitSeconds, 
	KYC_Rating, 
	MobilePhoneNumber, 
	Name, 
	TransactionLimit, 
	DimBankSourceKey,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 
(
	SELECT
         AccountAlias= CONVERT(VARCHAR(20),[AccountAlias]), 
		 AccountHolderName = CONVERT(VARCHAR(200),[AccountHolderName]), 
		 AccountLinkIdentifier = [AccountLinkIdentifier], 
		 BankAccountLinkStatusComment= CONVERT(VARCHAR(1000),[BankAccountLinkStatusComment]), 
		 BankAccountLinkStatusType = [BankAccountLinkStatusTypeId], 
		 BranchName = CONVERT(VARCHAR(200),[BranchName]), 
		 DurationLimit = [DurationLimit], 
		 DurationLimitSeconds=[DurationLimitSeconds], 
		 KYC_Rating = [KYCId], 
		 MobilePhoneNumber = CONVERT(VARCHAR(30),[MobilePhoneNumber]), 
		 Name = CONVERT(VARCHAR(200),[AccountHolderName]), 
		 SourceKey = [BankAccountId], 
		 TransactionLimit =[TransactionLimit], 
		 DimBankSourceKey = [BankId]
	FROM [dbo].[BankAccount]
) as base_query

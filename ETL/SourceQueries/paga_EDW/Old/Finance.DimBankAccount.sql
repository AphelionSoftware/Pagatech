SELECT 
	SourceKey ,
	AccountAlias, 
	AccountHolderName, 
	BankAccountLinkStatusComment, 
	BankAccountLinkStatusType = COALESCE(BankAccountLinkStatusType, 'UNKNOWN'), 
	BranchName, 
	DurationLimit, 
	DurationLimitSeconds, 
	KYC_Rating, 
	Name, 
	TransactionLimit, 
	DimBankSourceKey
	
FROM 
(
	SELECT
         AccountAlias= CONVERT(VARCHAR(20),[AccountAlias]), 
		 AccountHolderName = CONVERT(VARCHAR(200),[AccountHolderName]), 
		 BankAccountLinkStatusComment= CONVERT(VARCHAR(1000),[BankAccountLinkStatusComment]), 
		 BankAccountLinkStatusType = [BankAccountLinkStatusTypeId], 
		 BranchName = CONVERT(VARCHAR(200),[BranchName]), 
		 DurationLimit = [DurationLimit], 
		 DurationLimitSeconds=[DurationLimitSeconds], 
		 KYC_Rating = [KYCId], 
		 Name = CONVERT(VARCHAR(200),[AccountHolderName]), 
		 SourceKey = [BankAccountId], 
		 TransactionLimit =[TransactionLimit], 
		 DimBankSourceKey = [BankId]
	FROM [dbo].[BankAccount]
) as base_query

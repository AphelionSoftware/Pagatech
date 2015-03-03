
MERGE  Paga_EDW.Finance.DimBankAccount AS Target
USING 
(
	SELECT *
	FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY x.SourceKey ORDER BY x.SYS_CHANGE_VERSION DESC) AS rn,
			x.SourceKey,
			x.Name,
			y.DimBankID,
			BankAccountLinkStatusType,
			TextDesciption,
			AccountHolderName,
			BranchName,
			KYC_Rating,
			MobilePhoneNumber,
			BankAccountLinkStatusComment,
			AccountAlias,
			TransactionLimit,
			DurationLimit,
			DurationLimitSeconds,
			IsEnabled,
			AccountLinkIdentifier,
			x.SYS_CHANGE_VERSION,
			x.SYS_CHANGE_OPERATION
		FROM [Staging].[Finance_DimBankAccount2] as x
		LEFT jOIN Paga_EDW.finance.DimBank as y on
		x.DimBankSourceKey = y.SourceKey
	) AS z WHERE z.rn= 1
) AS Source ON 
	Target.sourcekey = Source.sourcekey


WHEN MATCHED  
THEN
	UPDATE SET 
	Target.Name = Source.Name,
	Target.DimBankID = Source.DimBankID,
	Target.BankAccountLinkStatusType = Source.BankAccountLinkStatusType,Target.TextDesciption = Source.TextDesciption,Target.AccountHolderName = Source.AccountHolderName,Target.BranchName = Source.BranchName,Target.KYC_Rating = Source.KYC_Rating,Target.MobilePhoneNumber = Source.MobilePhoneNumber,Target.BankAccountLinkStatusComment = Source.BankAccountLinkStatusComment,Target.AccountAlias = Source.AccountAlias,Target.TransactionLimit = Source.TransactionLimit,Target.DurationLimit = Source.DurationLimit,Target.DurationLimitSeconds = Source.DurationLimitSeconds,Target.IsEnabled = Source.IsEnabled,Target.AccountLinkIdentifier = Source.AccountLinkIdentifier,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
	
WHEN NOT MATCHED BY TARGET
THEN
	INSERT 
	(
		SourceKey,Name,DimBankID,BankAccountLinkStatusType,TextDesciption,AccountHolderName,BranchName,KYC_Rating,MobilePhoneNumber,BankAccountLinkStatusComment,AccountAlias,TransactionLimit,DurationLimit,DurationLimitSeconds,IsEnabled,AccountLinkIdentifier,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
	)
	VALUES 
	(
		Source.SourceKey, Source.Name,Source.DimBankID,Source.BankAccountLinkStatusType,Source.TextDesciption,Source.AccountHolderName,Source.BranchName,Source.KYC_Rating,Source.MobilePhoneNumber,Source.BankAccountLinkStatusComment,Source.AccountAlias,Source.TransactionLimit,Source.DurationLimit,Source.DurationLimitSeconds,Source.IsEnabled,Source.AccountLinkIdentifier,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
	);
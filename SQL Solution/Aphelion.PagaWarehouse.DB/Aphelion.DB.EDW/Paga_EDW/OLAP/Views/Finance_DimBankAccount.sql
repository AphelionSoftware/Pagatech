	
CREATE VIEW OLAP.Finance_DimBankAccount AS
	(
		SELECT 
			edw.DimBankAccountID,edw.SourceKey,edw.Name,edw.DimBankID,edw.BankAccountLinkStatusType,edw.TextDesciption,edw.AccountHolderName,edw.BranchName,edw.KYC_Rating,edw.MobilePhoneNumber,edw.BankAccountLinkStatusComment,edw.AccountNumber,edw.AccountAlias,edw.TransactionLimit,edw.DurationLimit,edw.DurationLimitSeconds,edw.IsEnabled,edw.AccountLinkIdentifier
		FROM Finance.DimBankAccount AS edw
		WHERE edw.IsActive = 1
	);
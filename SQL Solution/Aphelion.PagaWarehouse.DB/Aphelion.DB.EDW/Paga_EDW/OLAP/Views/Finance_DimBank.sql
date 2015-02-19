	
CREATE VIEW OLAP.Finance_DimBank AS
	(
		SELECT 
			edw.DimBankID,edw.SourceKey,edw.Name,edw.BankAccountLinkType,edw.DimOrganizationID,edw.SupportsDebit,edw.SupportsCredit
		FROM Finance.DimBank AS edw
		WHERE edw.IsActive = 1
	);
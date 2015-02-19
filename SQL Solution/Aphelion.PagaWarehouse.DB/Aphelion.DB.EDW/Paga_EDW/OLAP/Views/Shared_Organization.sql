CREATE VIEW OLAP.Shared_Organization AS
(
	SELECT 
			edw.DimOrganizationID,
			edw.SourceKey,
			edw.Name AS Organization,
			edw.DimBusinessTypeID,
			edw.DimOrganizationSubscriptionStatusID,
			edw.DimOrganizationVerificationStatusID,
			edw.DimPagaAccountID,
			edw.TextDesciption,
			edw.ReferenceNumber,
			edw.TaxIDNumber,
			edw.VATCertificationNumber,
			edw.RcName,
			edw.WebsiteURL,
			edw.OrganizationCode,
			edw.DisplayName
	FROM shared.DimOrganization AS edw
	WHERE IsActive = 1
);
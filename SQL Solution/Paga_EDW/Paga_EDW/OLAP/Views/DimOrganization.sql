  

CREATE VIEW [OLAP].[DimOrganization]
WITH SCHEMABINDING
AS

SELECT 
	[DimOrganization_9033492926774381919].[Code] AS [DimOrganizationCode]
	,[DimOrganization_9033492926774381919].[Description] AS [DimOrganizationDescription]
	,[DimOrganization_9033492926774381919].[DimBusinessTypeID] AS [DimOrganizationDimBusinessTypeID]
	,[DimOrganization_9033492926774381919].[DimOrganizationID] AS [DimOrganizationID]
	,[DimOrganization_9033492926774381919].[DimOrganizationSubscriptionStatusID] AS [DimOrganizationSubscriptionStatusID]
	,[DimOrganization_9033492926774381919].[DimOrganizationVerificationStatusID] AS [DimOrganizationVerificationStatusID]
	,[DimOrganization_9033492926774381919].[DimPagaAccountID] AS [DimOrganizationDimPagaAccountID]
	,[DimOrganization_9033492926774381919].[DisplayName] AS [DimOrganizationDisplayName]
	,[DimOrganization_9033492926774381919].[Name] AS [DimOrganizationName]
	,[DimOrganization_9033492926774381919].[RcName] AS [DimOrganizationRcName]
	,[DimOrganization_9033492926774381919].[ReferenceNumber] AS [DimOrganizationReferenceNumber]
	,[DimOrganization_9033492926774381919].[SourceKey] AS [DimOrganizationSourceKey]
	,[DimOrganization_9033492926774381919].[TaxIDNumber] AS [DimOrganizationTaxIDNumber]
	,[DimOrganization_9033492926774381919].[VATCertificationNumber] AS [DimOrganizationVATCertificationNumber]
	,[DimOrganization_9033492926774381919].[WebsiteURL] AS [DimOrganizationWebsiteURL]
FROM [Shared].[DimOrganization] AS [DimOrganization_9033492926774381919]



    
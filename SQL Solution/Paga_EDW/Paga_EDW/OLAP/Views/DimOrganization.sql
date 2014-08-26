  

CREATE VIEW [OLAP].[DimOrganization]
AS

SELECT 
	[DimOrganization_9033492926774381919].[Code] AS [OrganizationCode]
	,[DimOrganization_9033492926774381919].[Description] AS [OrganizationDescription]
	,[DimOrganization_9033492926774381919].[DimBusinessTypeID] AS [OrganizationDimBusinessTypeID]
	,[DimOrganization_9033492926774381919].[DimOrganizationID] AS [OrganizationDimOrganizationID]
	,[DimOrganization_9033492926774381919].[DimOrganizationSubscriptionStatusID] AS [OrganizationDimOrganizationSubscriptionStatusID]
	,[DimOrganization_9033492926774381919].[DimOrganizationVerificationStatusID] AS [OrganizationDimOrganizationVerificationStatusID]
	,[DimOrganization_9033492926774381919].[DimPagaAccountID] AS [OrganizationDimPagaAccountID]
	,[DimOrganization_9033492926774381919].[DisplayName] AS [OrganizationDisplayName]
	,[DimOrganization_9033492926774381919].[Name] AS [OrganizationName]
	,[DimOrganization_9033492926774381919].[RcName] AS [OrganizationRcName]
	,[DimOrganization_9033492926774381919].[ReferenceNumber] AS [OrganizationReferenceNumber]
	,[DimOrganization_9033492926774381919].[SourceKey] AS [OrganizationSourceKey]
	,[DimOrganization_9033492926774381919].[sysCreatedBy] AS [OrganizationsysCreatedBy]
	,[DimOrganization_9033492926774381919].[sysCreatedOn] AS [OrganizationsysCreatedOn]
	,[DimOrganization_9033492926774381919].[sysModifiedBy] AS [OrganizationsysModifiedBy]
	,[DimOrganization_9033492926774381919].[sysModifiedOn] AS [OrganizationsysModifiedOn]
	,[DimOrganization_9033492926774381919].[TaxIDNumber] AS [OrganizationTaxIDNumber]
	,[DimOrganization_9033492926774381919].[VATCertificationNumber] AS [OrganizationVATCertificationNumber]
	,[DimOrganization_9033492926774381919].[WebsiteURL] AS [OrganizationWebsiteURL]
FROM [Shared].[DimOrganization] AS [DimOrganization_9033492926774381919]



    
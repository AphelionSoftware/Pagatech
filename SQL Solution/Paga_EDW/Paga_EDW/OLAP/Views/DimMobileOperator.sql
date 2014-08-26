  

CREATE VIEW [OLAP].[DimMobileOperator]
AS

SELECT 
	[DimMobileOperator_1257519819263473036].[Code] AS [MobileOperatorCode]
	,[DimMobileOperator_1257519819263473036].[DimMobileOperatorID] AS [MobileOperatorDimMobileOperatorID]
	,[DimMobileOperator_1257519819263473036].[DimOrganizationID] AS [MobileOperatorDimOrganizationID]
	,[DimMobileOperator_1257519819263473036].[IsActive] AS [MobileOperatorIsActive]
	,[DimMobileOperator_1257519819263473036].[Name] AS [MobileOperatorName]
	,[DimMobileOperator_1257519819263473036].[SourceKey] AS [MobileOperatorSourceKey]
	,[DimMobileOperator_1257519819263473036].[sysCreatedBy] AS [MobileOperatorsysCreatedBy]
	,[DimMobileOperator_1257519819263473036].[sysCreatedOn] AS [MobileOperatorsysCreatedOn]
	,[DimMobileOperator_1257519819263473036].[sysModifiedBy] AS [MobileOperatorsysModifiedBy]
	,[DimMobileOperator_1257519819263473036].[sysModifiedOn] AS [MobileOperatorsysModifiedOn]
FROM [Shared].[DimMobileOperator] AS [DimMobileOperator_1257519819263473036]



    
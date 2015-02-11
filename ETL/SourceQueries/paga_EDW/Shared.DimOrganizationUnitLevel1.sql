SET NOCOUNT ON; 
DECLARE @OrgLevel AS INT = 1; 
DECLARE @OrgUnit AS Table 
( 	
	[SourceKey] [varchar](255) , 	
	[Name] [varchar](255) , 	
	[DimOrganizationSourceKey] [int], 	
	[DimOrganizationUnitTypeSourceKey] [varchar](50), 	
	[IdentificationNumber] [varchar](20)  
);  
WITH cte AS 
(  	SELECT  		o.OrganizationId, 		ou.OrganizationUnitId, 		UnitName = COALESCE(ou.Name, o.name), 		IdentificationNumber, 		ot.[Description], 		ParentOrganizationUnitId = ou.[OrganizationUnitId], 		1 AS OrgLevel 	FROM [dbo].Organization AS o 	INNER JOIN dbo.OrganizationUnit AS ou ON 		ou.OrganizationId = o.OrganizationId 	LEFT JOIN dbo.OrganizationUnitType AS ot ON 		ou.OrganizationUnitTypeId = ot.OrganizationUnitTypeId 	WHERE ou.ParentOrganizationUnitId IS NULL 	UNION ALL 	SELECT  		st.OrganizationId, 		ou1.OrganizationUnitId, 		UnitName = ou1.Name, 		ou1.IdentificationNumber, 		ot1.[Description], 		ou1.ParentOrganizationUnitId, 		st.OrgLevel + 1 AS OrgLevel 	FROM [dbo].OrganizationUnit AS ou1 	INNER JOIN cte AS ST ON  		ou1.ParentOrganizationUnitId = ST.OrganizationUnitId 	INNER JOIN dbo.OrganizationUnitType AS ot1 ON 		ou1.OrganizationUnitTypeId = ot1.OrganizationUnitTypeId 	WHERE ou1.ParentOrganizationUnitId IS NOT NULL )  	INSERT INTO @OrgUnit 	( 		SourceKey, 		Name, 		DimOrganizationSourceKey, 		DimOrganizationUnitTypeSourceKey, 		IdentificationNumber 	)  	SELECT 		SourceKey = cte.OrganizationUnitId, 		Name = CONVERT(VARCHAR(255),cte.UnitName), 		DimOrganizationSourceKey = cte.OrganizationId, 		DimOrganizationTypeSourceKey = COALESCE(LTRIM(RTRIM(cte.[Description])), 'PARENT ORGANIZATION'), 		IdentificationNumber 	FROM cte 	WHERE  		cte.OrgLevel = @OrgLevel 	 	 	SELECT  		ct.SYS_CHANGE_OPERATION, SYS_CHANGE_VERSION = ct.as_of_change_version, SourceKey, 		base_query.Name, 		base_query.DimOrganizationSourceKey, 		base_query.DimOrganizationUnitTypeSourceKey, 		base_query.IdentificationNumber, ct.SYS_CHANGE_OPERATION,
	SYS_CHANGE_VERSION = ct.as_of_change_version 	FROM @OrgUnit AS base_query

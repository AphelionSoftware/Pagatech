
	
CREATE VIEW [OLAP].Shared_OrganizationUnitHierarcy AS
	(
		
		SELECT
			ou1.DimOrganizationID,
			ou1.OrgLevel1_UnitType,
			ou1.DimOrganizationUnitLevel1ID,
			ou1.Name AS OrgLevel1,
			ou1.IdentificationNumber AS OrgLevel1_IdentificationNumber,
			
			ou2.OrgLevel2_UnitType,
			ou2.DimOrganizationUnitLevel2ID,
			ou2.Name AS OrgLevel2,
			ou2.IdentificationNumber AS OrgLevel2_IdentificationNumber,
			
			ou3.OrgLevel3_UnitType,
			ou3.DimOrganizationUnitLevel3ID,
			ou3.Name AS OrgLevel3,
			ou3.IdentificationNumber AS OrgLevel3_IdentificationNumber,

			ou4.OrgLevel4_UnitType,
			ou4.DimOrganizationUnitLevel4ID,
			ou4.Name AS OrgLevel4,
			ou4.IdentificationNumber AS OrgLevel4_IdentificationNumber

		FROM 
		(
			SELECT 
				ou_1.DimOrganizationID,
				ou_1.DimOrganizationUnitLevel1ID,
				ou_1.Name,
				ou_1.IdentificationNumber,
				ut_1.Name AS OrgLevel1_UnitType
			FROM Shared.DimOrganizationUnitLevel1 AS ou_1 
			INNER JOIN Classification.DimOrganizationUnitType AS ut_1 ON
				ou_1.DimOrganizationUnitTypeID = ut_1.DimOrganizationUnitTypeID
			INNER JOIN shared.DimOrganization AS o ON
				o.DimOrganizationID = ou_1.DimOrganizationID
			WHERE
				ou_1.IsActive = 1
		) AS ou1
		OUTER APPLY
		(
			SELECT 
				ou_2.DimOrganizationUnitLevel2ID,
				ou_2.Name,
				ou_2.IdentificationNumber,
				ut_2.Name AS OrgLevel2_UnitType
			FROM Shared.DimOrganizationUnitLevel2 AS ou_2
			INNER JOIN Classification.DimOrganizationUnitType AS ut_2 ON
				ou_2.DimOrganizationUnitTypeID = ut_2.DimOrganizationUnitTypeID
			WHERE 
				ou_2.DimOrganizationUnitLevel1ID = ou1.DimOrganizationUnitLevel1ID
				AND ou_2.IsActive = 1
		) AS ou2
		OUTER APPLY
		(
			SELECT 
				ou_3.DimOrganizationUnitLevel3ID,
				ou_3.Name,
				ou_3.IdentificationNumber,
				ut_3.Name AS OrgLevel3_UnitType
			FROM Shared.DimOrganizationUnitLevel3 AS ou_3 
			INNER JOIN Classification.DimOrganizationUnitType AS ut_3 ON
				ou_3.DimOrganizationUnitTypeID = ut_3.DimOrganizationUnitTypeID
			WHERE 
				ou_3.DimOrganizationUnitLevel2ID = ou2.DimOrganizationUnitLevel2ID
				AND ou_3.IsActive = 1
		) AS ou3
		OUTER APPLY
		(
			SELECT 
				ou_4.DimOrganizationUnitLevel4ID,
				ou_4.Name,
				ou_4.IdentificationNumber,
				ut_4.Name AS OrgLevel4_UnitType
			FROM Shared.DimOrganizationUnitLevel4 AS ou_4 
			INNER JOIN Classification.DimOrganizationUnitType AS ut_4 ON
				ou_4.DimOrganizationUnitTypeID = ut_4.DimOrganizationUnitTypeID
			WHERE 
				ou_4.DimOrganizationUnitLevel3ID = ou3.DimOrganizationUnitLevel3ID
				AND ou_4.IsActive = 1
		) AS ou4
		
		
	);
SELECT
	orgrollup.*,
	u.SourceKey

FROM
(

	SELECT	
		o.SourceKey as orgSourcKey,
		o.name,
		u1.SourceKey AS UnitLevel1ID,
		u1.name AS UnitLevel1Name,
		u2.SourceKey UnitLevel2ID,
		u2.name AS UnitLevel2Name,
		u3.SourceKey UnitLevel3ID,
		U3.Name AS UnitLevel3Name,
		u4.SourceKey UnitLevel4ID,
		u4.Name AS UnitLevel4Name,
		o.DimProcessChannelSourceKey
	FROM Staging.[Shared_DimOrganizationUnitLevel4]  AS u4
	INNER JOIN staging.Shared_DimOrganizationUnitLevel3 AS u3 ON
		u4.DimOrganizationUnitLevel3SourceKey = u3.SourceKey
	INNER JOIN staging.Shared_DimOrganizationUnitLevel2 AS u2 ON
		u3.DimOrganizationUnitLevel2SourceKey = u2.SourceKey
	INNER JOIN staging.Shared_DimOrganizationUnitLevel1 AS u1 ON
		u2.DimOrganizationUnitLevel1SourceKey =  u1.SourceKey
	INNER JOIN staging.Shared_DimOrganization AS o ON
		u1.DimOrganizationSourceKey = o.SourceKey
	WHERE 
		o.SourceKey = 147
) AS orgRollup
INNER JOIN staging.Shared_DimUser as u on 
	u.DimOrganizationUnitLevel4SourceKey = orgRollup.UnitLevel4ID

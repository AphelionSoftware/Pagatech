SELECT  	SourceKey , 	base_query.name, 	base_query.code, 	base_query.DimRegionSourceKey, ct.SYS_CHANGE_OPERATION,
	SYS_CHANGE_VERSION = ct.as_of_change_version FROM   (SELECT LocalGovernmentAreaId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, CONVERT(VARCHAR(50),LgaCode) as Code, RegionId AS DimRegionSourceKey FROM dbo.LocalGovernmentArea) as base_query

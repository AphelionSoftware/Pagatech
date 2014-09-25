  

CREATE VIEW [OLAP].[DimRegion]
AS

SELECT 
	[DimRegion_1114136283386013378].[DimGeoZoneID] AS [DimRegionDimGeoZoneID]
	,[DimRegion_1114136283386013378].[DimRegionID] AS [DimRegionID]
	,[DimRegion_1114136283386013378].[Name] AS [DimRegionName]
	,[DimRegion_1114136283386013378].[SourceKey] AS [DimRegionSourceKey]
	,[DimGeoZone_7499283773846126275].[Code] AS [DimGeoZoneCode]
	,[DimGeoZone_7499283773846126275].[DimCountryID] AS [DimGeoZoneDimCountryID]
	,[DimGeoZone_7499283773846126275].[Name] AS [DimGeoZoneName]
	,[DimGeoZone_7499283773846126275].[SourceKey] AS [DimGeoZoneSourceKey]
	,[DimCountry_2320489318480856468].[Code] AS [DimCountryCode]
	,[DimCountry_2320489318480856468].[Name] AS [DimCountryName]
	,[DimCountry_2320489318480856468].[SourceKey] AS [DimCountrySourceKey]
FROM [Location].[DimRegion] AS [DimRegion_1114136283386013378]

    JOIN [Location].[DimGeoZone] AS [DimGeoZone_7499283773846126275] 
    
    JOIN [Location].[DimCountry] AS [DimCountry_2320489318480856468] 
    
        ON  [DimGeoZone_7499283773846126275].[DimCountryID] = [DimCountry_2320489318480856468].[DimCountryID]

        ON  [DimRegion_1114136283386013378].[DimGeoZoneID] = [DimGeoZone_7499283773846126275].[DimGeoZoneID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCountry', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountrySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountrySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountrySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountrySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountrySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCountry', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountryName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountryName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCountry', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimCountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGeoZone', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGeoZone', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGeoZone', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneDimCountryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneDimCountryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCountryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneDimCountryID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneDimCountryID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCountryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneDimCountryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGeoZone', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimGeoZoneCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRegion', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRegion', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRegion', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimRegionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRegion', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionDimGeoZoneID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionDimGeoZoneID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGeoZoneID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DimRegionDimGeoZoneID';


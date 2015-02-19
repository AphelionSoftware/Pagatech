
CREATE VIEW [OLAP].[Location_LocationHierarchy]
AS
(
SELECT
	c.DimCountryID,
	gz.DimGeoZoneID,
	r.DimRegionID,
	lga.DimLocalGovernmentAreaID,
	cty.DimCityID,
	c.Name AS Country,
	gz.Name AS GeoZone,
	r.name	AS Region,
	lga.Name AS LocalGovtArea,
	cty.Name AS City
FROM Location.DimCountry AS c
INNER JOIN Location.DimGeoZone AS gz 
	ON c.DimCountryID = gz.DimCountryID
	AND gz.IsActive = 1
INNER JOIN Location.DimRegion AS r ON 
	gz.DimGeoZoneID = r.DimGeoZoneID
	AND r.IsActive = 1
INNER JOIN location.DimLocalGovernmentArea AS lga ON
	r.DimRegionID = lga.DimRegionID
	AND lga.IsActive = 1
INNER JOIN location.DimCity AS cty ON
	lga.DimLocalGovernmentAreaID = cty.DimLocalGovernmentAreaID
	AND cty.IsActive = 1
WHERE
	c.IsActive = 1
)
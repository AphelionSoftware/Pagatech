CREATE TABLE [Location].[DimRegion] (
    [DimRegionID]    INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]      INT           NOT NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [DimGeoZoneID]   INT           NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]       BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_DimRegionID] PRIMARY KEY CLUSTERED ([DimRegionID] ASC),
    CONSTRAINT [fk_DimRegion_DimGeoZoneID] FOREIGN KEY ([DimGeoZoneID]) REFERENCES [Location].[DimGeoZone] ([DimGeoZoneID])
);








GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.Region', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimRegion';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimRegion';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimRegion';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2200', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimRegion';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'RegionId', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimRegion';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	SourceKey, 	base_query.name, 	DimGeoZoneSourceKey = COALESCE(base_query.DimGeoZoneSourceKey, -1) FROM   (SELECT RegionId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, GeoZoneId AS DimGeoZoneSourceKey FROM dbo.Region) as base_query', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimRegion';




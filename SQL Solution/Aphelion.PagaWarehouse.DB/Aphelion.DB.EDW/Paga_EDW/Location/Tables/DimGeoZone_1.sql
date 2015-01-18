CREATE TABLE [Location].[DimGeoZone] (
    [DimGeoZoneID]   INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]      INT           NOT NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [DimCountryID]   INT           NOT NULL,
    [SourceKeyHash]  BIGINT        NULL,
    [DeltaHash]      BIGINT        NULL,
    [sys_ModifiedBy] VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimGeoZoneID] PRIMARY KEY CLUSTERED ([DimGeoZoneID] ASC),
    CONSTRAINT [fk_DimGeoZone_DimCountryID] FOREIGN KEY ([DimCountryID]) REFERENCES [Location].[DimCountry] ([DimCountryID])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGeoZone_SourceKey]
    ON [Location].[DimGeoZone]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.GeoZone', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGeoZone';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGeoZone';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGeoZone';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2100', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGeoZone';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'GeoZoneId', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGeoZone';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	SourceKey, 	base_query.name, 	base_query.code, 	base_query.DimCountrySourceKey FROM   (SELECT GeoZoneId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, Symbol AS Code, 1 AS DimCountrySourceKey FROM dbo.GeoZone) as base_query', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGeoZone';




CREATE TABLE [Location].[DimRegion] (
    [DimRegionID]          INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [DimGeoZoneID]         INT           NOT NULL,
    [sys_ModifiedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]             BIT           DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL,
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
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	SourceKey, 	base_query.name, 	DimGeoZoneSourceKey = COALESCE(base_query.DimGeoZoneSourceKey, -1), ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, 	SYS_CHANGE_VERSION = ct.as_of_change_version FROM   (SELECT RegionId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, GeoZoneId AS DimGeoZoneSourceKey FROM dbo.Region) as base_query', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimRegion';








GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Location].[DimRegion] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Location_DimRegion AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.Name = Source.Name,Target.DimGeoZoneID = Source.DimGeoZoneID,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,Name,DimGeoZoneID,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.Name,Source.DimGeoZoneID,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimRegion';






GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimRegion_SourceKey]
    ON [Location].[DimRegion]([SourceKey] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_DimRegion_ChangeVersion]
    ON [Location].[DimRegion]([SYS_CHANGE_VERSION] ASC);


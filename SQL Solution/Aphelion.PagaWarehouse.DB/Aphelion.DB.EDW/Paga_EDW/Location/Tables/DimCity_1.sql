CREATE TABLE [Location].[DimCity] (
    [DimCityID]                INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                INT           NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [DimLocalGovernmentAreaID] INT           NOT NULL,
    [PostalCode]               INT           NOT NULL,
    [sys_ModifiedBy]           VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]            VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]            DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]                 BIT           DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]       BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]     CHAR (1)      DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimCityID] PRIMARY KEY CLUSTERED ([DimCityID] ASC),
    CONSTRAINT [FK_DimCity_DimLocalGovernmentArea] FOREIGN KEY ([DimLocalGovernmentAreaID]) REFERENCES [Location].[DimLocalGovernmentArea] ([DimLocalGovernmentAreaID])
);
























GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimCity_SourceKey]
    ON [Location].[DimCity]([SourceKey] ASC);


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimLocalGovernmentAreaID';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.City', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCity';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCity';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'5', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCity';




GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2400', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCity';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'CityId', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCity';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	SourceKey, 	base_query.name, 	PostalCode = COALESCE(base_query.PostalCode, -1), 	DimLocalGovernmentAreaSourceKey= COALESCE(base_query.DimLocalGovernmentAreaSourceKey, -1), ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, 	SYS_CHANGE_VERSION = ct.as_of_change_version FROM   (SELECT CityId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, PostalCode as PostalCode, LocalGovernmentAreaId AS DimLocalGovernmentAreaSourceKey FROM dbo.City) as base_query  ', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCity';










GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Location].[DimCity] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Location_DimCity AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.Name = Source.Name,Target.DimLocalGovernmentAreaID = Source.DimLocalGovernmentAreaID,Target.PostalCode = Source.PostalCode,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,Name,DimLocalGovernmentAreaID,PostalCode,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.Name,Source.DimLocalGovernmentAreaID,Source.PostalCode,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCity';






GO
CREATE NONCLUSTERED INDEX [ix_DimCity_ChangeVersion]
    ON [Location].[DimCity]([SYS_CHANGE_VERSION] ASC);


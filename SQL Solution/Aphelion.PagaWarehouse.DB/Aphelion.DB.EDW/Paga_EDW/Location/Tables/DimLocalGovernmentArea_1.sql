CREATE TABLE [Location].[DimLocalGovernmentArea] (
    [DimLocalGovernmentAreaID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                INT           NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [Code]                     VARCHAR (50)  NOT NULL,
    [DimRegionID]              INT           NOT NULL,
    [sys_ModifiedBy]           VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]            VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]            DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]                 BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_DimLocalGovernmentAreaID] PRIMARY KEY CLUSTERED ([DimLocalGovernmentAreaID] ASC),
    CONSTRAINT [fk_DimLocalGovernmentArea_DimRegionID] FOREIGN KEY ([DimRegionID]) REFERENCES [Location].[DimRegion] ([DimRegionID])
);












GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.LocalGovernmentArea', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimLocalGovernmentArea';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimLocalGovernmentArea';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'3', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimLocalGovernmentArea';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2300', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimLocalGovernmentArea';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'LocalGovernmentAreaId', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimLocalGovernmentArea';




GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	SourceKey , 	base_query.name, 	base_query.code, 	base_query.DimRegionSourceKey, ct.SYS_CHANGE_OPERATION, 	SYS_CHANGE_VERSION = ct.as_of_change_version FROM   (SELECT LocalGovernmentAreaId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, CONVERT(VARCHAR(50),LgaCode) as Code, RegionId AS DimRegionSourceKey FROM dbo.LocalGovernmentArea) as base_query', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimLocalGovernmentArea';






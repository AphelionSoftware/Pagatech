﻿CREATE TABLE [Shared].[DimOrganizationUnitLevel1] (
    [DimOrganizationUnitLevel1ID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                   VARCHAR (255) NOT NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [DimOrganizationID]           INT           NOT NULL,
    [DimOrganizationUnitTypeID]   INT           NOT NULL,
    [IdentificationNumber]        VARCHAR (20)  NULL,
    [SourceKeyHash]               BIGINT        NULL,
    [DeltaHash]                   BIGINT        NULL,
    [sys_ModifiedBy]              VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]              DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]               VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]               DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimOrganizationUnitLevel1ID] PRIMARY KEY CLUSTERED ([DimOrganizationUnitLevel1ID] ASC),
    CONSTRAINT [fk_DimOrganizationUnitLevel1_DimOrganizationID] FOREIGN KEY ([DimOrganizationID]) REFERENCES [Shared].[DimOrganization] ([DimOrganizationID]),
    CONSTRAINT [fk_DimOrganizationUnitLevel1_DimOrganizationUnitTypeID] FOREIGN KEY ([DimOrganizationUnitTypeID]) REFERENCES [Classification].[DimOrganizationUnitType] ([DimOrganizationUnitTypeID])
);








GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimOrganizationUnitLevel1_SourceKey]
    ON [Shared].[DimOrganizationUnitLevel1]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.OrganizationUnit', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'OrganizationUnitId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SET NOCOUNT ON;
DECLARE @OrgLevel AS INT = 1;
DECLARE @OrgUnit AS Table
(
	[SourceKey] [varchar](255) ,
	[Name] [varchar](255) ,
	[DimOrganizationSourceKey] [int],
	[DimOrganizationUnitTypeSourceKey] [int],
	[IdentificationNumber] [varchar](20) 
);

WITH cte AS
(

	SELECT 
		o.OrganizationId,
		ou.OrganizationUnitId,
		UnitName = COALESCE(ou.Name, o.name),
		IdentificationNumber,
		OrganizationUnitTypeId,
		ParentOrganizationUnitId = o.OrganizationId,
		1 AS OrgLevel
	FROM [dbo].Organization AS o
	INNER JOIN dbo.OrganizationUnit AS ou ON
		ou.OrganizationId = o.OrganizationId
	WHERE ISNULL(ParentOrganizationUnitId,0) = 0
	UNION ALL
	SELECT 
		st.OrganizationId,
		ou1.OrganizationUnitId,
		UnitName = ou1.Name,
		ou1.IdentificationNumber,
		ou1.OrganizationUnitTypeId,
		ou1.ParentOrganizationUnitId,
		st.OrgLevel + 1 AS OrgLevel
	FROM [dbo].OrganizationUnit AS ou1
	INNER JOIN cte AS ST ON 
		ou1.ParentOrganizationUnitId = ST.OrganizationUnitId
	WHERE ou1.ParentOrganizationUnitId IS NOT NULL
)

	INSERT INTO @OrgUnit
	(
		SourceKey,
		Name,
		DimOrganizationSourceKey,
		DimOrganizationUnitTypeSourceKey,
		IdentificationNumber
	)

	SELECT
		SourceKey = cte.OrganizationUnitId,
		Name = CONVERT(VARCHAR(255),cte.UnitName),
		DimOrganizationSourceKey = cte.OrganizationId,
		DimOrganizationTypeSourceKey = COALESCE(cte.OrganizationUnitTypeId, -1),
		IdentificationNumber
	FROM cte
	WHERE 
		cte.OrgLevel = @OrgLevel
	
	
	SELECT 
		SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
		base_query.Name,
		base_query.DimOrganizationSourceKey,
		base_query.DimOrganizationUnitTypeSourceKey,
		base_query.IdentificationNumber,
		change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
	FROM @OrgUnit AS base_query', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';




GO
EXECUTE sp_addextendedproperty @name = N'RelationshipDepth', @value = N'3', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';


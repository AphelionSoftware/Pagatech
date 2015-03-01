CREATE TABLE [Shared].[DimOrganizationUnitLevel1] (
    [DimOrganizationUnitLevel1ID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                   INT           NOT NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [DimOrganizationID]           INT           NOT NULL,
    [DimOrganizationUnitTypeID]   INT           NOT NULL,
    [IdentificationNumber]        VARCHAR (20)  NULL,
    [sys_ModifiedBy]              VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]              DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]               VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]               DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]                    BIT           DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]          BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]        CHAR (1)      DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimOrganizationUnitLevel1ID] PRIMARY KEY CLUSTERED ([DimOrganizationUnitLevel1ID] ASC),
    CONSTRAINT [fk_DimOrganizationUnitLevel1_DimOrganizationID] FOREIGN KEY ([DimOrganizationID]) REFERENCES [Shared].[DimOrganization] ([DimOrganizationID]),
    CONSTRAINT [fk_DimOrganizationUnitLevel1_DimOrganizationUnitTypeID] FOREIGN KEY ([DimOrganizationUnitTypeID]) REFERENCES [Classification].[DimOrganizationUnitType] ([DimOrganizationUnitTypeID])
);
































GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimOrganizationUnitLevel1_SourceKey]
    ON [Shared].[DimOrganizationUnitLevel1]([SourceKey] ASC);


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.OrganizationUnit', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'3', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2300', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';




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
	[DimOrganizationUnitTypeSourceKey] INT, 	
	[IdentificationNumber] [varchar](20)  
);  
WITH cte AS 
(  	SELECT  		o.OrganizationId, 		ou.OrganizationUnitId, 		

UnitName = COALESCE(ou.Name, o.name), 		IdentificationNumber, 		ot.OrganizationUnitTypeId, 		ParentOrganizationUnitId = ou.[OrganizationUnitId], 		1 AS OrgLevel 	
FROM [dbo].Organization AS o 	INNER JOIN dbo.OrganizationUnit AS ou ON 		ou.OrganizationId = o.OrganizationId 	LEFT JOIN dbo.OrganizationUnitType AS ot ON 		
ou.OrganizationUnitTypeId = ot.OrganizationUnitTypeId 	WHERE ou.ParentOrganizationUnitId IS NULL 	UNION ALL 	SELECT  		st.OrganizationId, 		ou1.OrganizationUnitId, 		
UnitName = ou1.Name, 		ou1.IdentificationNumber, 		ot1.OrganizationUnitTypeId, 		ou1.ParentOrganizationUnitId, 		st.OrgLevel + 1 AS OrgLevel 	
FROM [dbo].OrganizationUnit AS ou1 	INNER JOIN cte AS ST ON  		ou1.ParentOrganizationUnitId = ST.OrganizationUnitId 	INNER JOIN dbo.OrganizationUnitType AS ot1 ON 		
ou1.OrganizationUnitTypeId = ot1.OrganizationUnitTypeId 	WHERE ou1.ParentOrganizationUnitId IS NOT NULL )  	

INSERT INTO @OrgUnit 	( 		SourceKey, 		Name, 		DimOrganizationSourceKey, 		DimOrganizationUnitTypeSourceKey, 		IdentificationNumber 	)  	
SELECT 		
	SourceKey = cte.OrganizationUnitId, 		
	Name = CONVERT(VARCHAR(255),cte.UnitName), 		
	DimOrganizationSourceKey = cte.ParentOrganizationUnitId, 		
	DimOrganizationTypeSourceKey = COALESCE(((cte.OrganizationUnitTypeId)), 0), 		
	IdentificationNumber 	
FROM cte 	
WHERE  		cte.OrgLevel = @OrgLevel 	 	 	

SELECT  		
	ct.SYS_CHANGE_OPERATION, 
	SYS_CHANGE_VERSION = ct.as_of_change_version,
	paga_change_log_id = ct.row_id, SourceKey, 		
	base_query.Name, 		
	base_query.DimOrganizationSourceKey, 		
	base_query.DimOrganizationUnitTypeSourceKey, 		
	base_query.IdentificationNumber
FROM @OrgUnit AS base_query
', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';






















GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET edw.SYS_CHANGE_OPERATION = stg.SYS_CHANGE_OPERATION,edw.SYS_CHANGE_VERSION = stg.SYS_CHANGE_VERSION, 
	edw.SourceKey = stg.SourceKey,edw.Name = stg.Name,edw.DimOrganizationID = stg.DimOrganizationID,edw.DimOrganizationUnitTypeID = stg.DimOrganizationUnitTypeID,edw.IdentificationNumber = stg.IdentificationNumber
	FROM Shared.DimOrganizationUnitLevel1 AS edw
	INNER JOIN Paga_Staging.Updates.Shared_DimOrganizationUnitLevel1 AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';




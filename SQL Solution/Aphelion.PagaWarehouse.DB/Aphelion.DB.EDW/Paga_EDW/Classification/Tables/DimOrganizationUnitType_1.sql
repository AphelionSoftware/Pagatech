CREATE TABLE [Classification].[DimOrganizationUnitType] (
    [DimOrganizationUnitTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                 VARCHAR (255) NOT NULL,
    [Name]                      VARCHAR (255) NOT NULL,
    [SourceKeyHash]             BIGINT        NULL,
    [DeltaHash]                 BIGINT        NULL,
    [sys_ModifiedBy]            VARCHAR (255) CONSTRAINT [DF__DimOrgani__sys_M__7F2BE32F] DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]            DATETIME      CONSTRAINT [DF__DimOrgani__sys_M__00200768] DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]             VARCHAR (255) CONSTRAINT [DF__DimOrgani__sys_C__01142BA1] DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]             DATETIME      CONSTRAINT [DF__DimOrgani__sys_C__02084FDA] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimOrganizationUnitTypeID] PRIMARY KEY CLUSTERED ([DimOrganizationUnitTypeID] ASC)
);










GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimOrganizationUnitType_SourceKey]
    ON [Classification].[DimOrganizationUnitType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.OrganizationUnitType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'OrganizationUnitTypeId', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	COALESCE(base_query.SourceKey,-1) AS SourceKey,
	CONVERT(VARCHAR(255),COALESCE(base_query.name,''UNKNOWN'')) AS name,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
FROM
(
 	SELECT
		SourceKey,
		Name
	FROM
	(
		SELECT 
			ROW_NUMBER() OVER (PARTITION BY description ORDER BY OrganizationUnitTypeID) AS rn,
			 OrganizationUnitTypeID AS SourceKey,
			 RTRIM(LTRIM(description)) as name,
			 OrganizationID
		FROM [dbo].[OrganizationUnitType]
	) AS org_unit_type
	WHERE 
		org_unit_type.rn = 1
) AS base_query ', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType';










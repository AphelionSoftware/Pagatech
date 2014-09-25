﻿CREATE TABLE [Classification].[DimOrganizationUnitType] (
    [DimOrganizationUnitTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                 VARCHAR (255) NOT NULL,
    [Name]                      VARCHAR (255) NOT NULL,
    [SourceKeyHash]             BIGINT        NULL,
    [DeltaHash]                 BIGINT        NULL,
    [sys_ModifiedBy]            VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]            DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]             VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]             DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimOrganizationUnitTypeID] PRIMARY KEY CLUSTERED ([DimOrganizationUnitTypeID] ASC)
);






GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimOrganizationUnitType_SourceKey]
    ON [Classification].[DimOrganizationUnitType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT DISTINCT
	CONVERT(VARCHAR(255),COALESCE(base_query.name,''Deleted'')) AS SourceKey,
	CONVERT(VARCHAR(255),COALESCE(base_query.name,''Deleted'')) AS name,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
FROM
(
 	SELECT 
	     OrganizationUnitTypeID AS SourceKey,
	     description as name,
	     OrganizationID
                FROM [dbo].[OrganizationUnitType]
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType';




GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'OrganizationUnitTypeId', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.OrganizationUnitType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitType';


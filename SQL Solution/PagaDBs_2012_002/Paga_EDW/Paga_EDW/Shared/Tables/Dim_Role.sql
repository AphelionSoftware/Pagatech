CREATE TABLE [Shared].[DimRole] (
    [DimRoleID]      INT            IDENTITY (1, 1) NOT NULL,
    [SourceKey]      INT            NOT NULL,
    [RoleGroupName]  VARCHAR (255)  NOT NULL,
    [Name]           VARCHAR (255)  NOT NULL,
    [TextDesciption] VARCHAR (1000) NULL,
    [SourceKeyHash]  BIGINT         NULL,
    [DeltaHash]      BIGINT         NULL,
    [sys_ModifiedBy] VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimRoleID] PRIMARY KEY CLUSTERED ([DimRoleID] ASC)
);






GO



GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRole';




GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.Role', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRole';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRole';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRole';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'RoleId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRole';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
		
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.SystemDescription,
	base_query.Name, 
	base_query.TextDescription,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
	
FROM 
	(
		SELECT 
			SourceKey = fa.roleId,
			SystemDescription = UPPER(CONVERT(VARCHAR(255),fa.[Namespace])),
			Name = CONVERT(VARCHAR(255), fa.Name),
			TextDescription = CONVERT(VARCHAR(1000), fa.Description)
		FROM dbo.[Role] AS fa

	) AS base_query', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRole';




GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRole', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRole', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRole', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRole', @level2type = N'COLUMN', @level2name = N'DeltaHash';


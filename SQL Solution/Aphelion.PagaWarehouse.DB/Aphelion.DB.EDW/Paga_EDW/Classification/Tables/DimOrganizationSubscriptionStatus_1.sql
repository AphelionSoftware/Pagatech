CREATE TABLE [Classification].[DimOrganizationSubscriptionStatus] (
    [DimOrganizationSubscriptionStatusID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                           VARCHAR (255) NOT NULL,
    [Name]                                VARCHAR (255) NOT NULL,
    [sys_ModifiedBy]                      VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]                      DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                       DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]                            BIT           DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]                  BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]                CHAR (1)      DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimOrganizationSubscriptionStatusID] PRIMARY KEY CLUSTERED ([DimOrganizationSubscriptionStatusID] ASC)
);




















GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimOrganizationSubscriptionStatus_SourceKey]
    ON [Classification].[DimOrganizationSubscriptionStatus]([SourceKey] ASC);


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.OrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationSubscriptionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationSubscriptionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationSubscriptionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationSubscriptionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'OrganizationSubscriptionStatusId', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationSubscriptionStatus';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, SYS_CHANGE_VERSION = ct.as_of_change_version,		SourceKey, 			base_query.name 		 	FROM   	(SELECT 	OrganizationSubscriptionStatusId AS SourceKey,  	 CONVERT(VARCHAR(255),Description) AS Name FROM dbo.OrganizationSubscriptionStatus) as base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationSubscriptionStatus';








GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Classification].[DimOrganizationSubscriptionStatus] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Classification_DimOrganizationSubscriptionStatus AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.Name = Source.Name,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,Name,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.Name,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimOrganizationSubscriptionStatus';






GO
CREATE NONCLUSTERED INDEX [ix_DimOrganizationSubscriptionStatus_ChangeVersion]
    ON [Classification].[DimOrganizationSubscriptionStatus]([SYS_CHANGE_VERSION] ASC);


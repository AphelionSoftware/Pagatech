CREATE TABLE [Classification].[DimIntegrationTransactionType] (
    [DimIntegrationTxTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]              VARCHAR (255) NOT NULL,
    [Name]                   VARCHAR (255) NULL,
    [sys_CreatedBy]          VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]          DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]         VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]               BIT           DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]     BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]   CHAR (1)      DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimIntegrationTxType] PRIMARY KEY CLUSTERED ([DimIntegrationTxTypeID] ASC)
);






















GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimIntegrationTransactionType_SourceKey]
    ON [Classification].[DimIntegrationTransactionType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.IntegrationTransactionType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'IntegrationTransactionTypeId', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'--IntegrationTransactionType	 
SELECT 	 	ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id,  	SYS_CHANGE_VERSION = ct.as_of_change_version, 	SourceKey, 		 	Name= SourceKey, 		 	DescriptionText 		 FROM 		 ( 		 	SELECT 			 		itt.IntegrationTransactionTypeId AS SourceKey,  			 		itt.IntegrationTransactionTypeId AS Name, 		CONVERT(VARCHAR(1000),itt.description) AS DescriptionText 		 	FROM dbo.IntegrationTransactionType AS itt 			 ) as base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionType';










GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Classification].[DimIntegrationTransactionType] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Classification_DimIntegrationTransactionType AS stg
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
			);', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionType';






GO
CREATE NONCLUSTERED INDEX [ix_DimIntegrationTransactionType_ChangeVersion]
    ON [Classification].[DimIntegrationTransactionType]([SYS_CHANGE_VERSION] ASC);


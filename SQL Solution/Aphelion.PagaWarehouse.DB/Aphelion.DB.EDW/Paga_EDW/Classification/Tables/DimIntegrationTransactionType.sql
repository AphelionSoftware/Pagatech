CREATE TABLE [Classification].[DimIntegrationTransactionType] (
    [DimIntegrationTxTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]              VARCHAR (255) NOT NULL,
    [Name]                   VARCHAR (255) NULL,
    [sys_CreatedBy]          VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]          DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]         VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]               BIT           DEFAULT ((1)) NOT NULL,
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










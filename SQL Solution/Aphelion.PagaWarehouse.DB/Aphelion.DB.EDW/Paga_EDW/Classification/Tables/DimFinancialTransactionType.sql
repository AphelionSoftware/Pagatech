CREATE TABLE [Classification].[DimFinancialTransactionType] (
    [DimFinancialTxTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [FinancialTxCategory]  VARCHAR (255) NOT NULL,
    [sys_ModifiedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]             BIT           DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimFinancialTxTypeID] PRIMARY KEY CLUSTERED ([DimFinancialTxTypeID] ASC)
);




















GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialTxType_SourceKey]
    ON [Classification].[DimFinancialTransactionType]([SourceKey] ASC);


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, SYS_CHANGE_VERSION = ct.as_of_change_version, SourceKey, 	base_query.name, 	base_query.FinancialTxCategory 	 FROM  ( 	SELECT 		FinancialTransactionTypeID AS SourceKey,  		CONVERT(VARCHAR(255),Description) AS Name, 		CONVERT(VARCHAR(255),COALESCE(FinancialTransactionTypeGroupId,''UNKNOWN'')) AS FinancialTxCategory 	FROM dbo.FinancialTransactionType AS ftt 	OUTER APPLY 	( 		SELECT TOP 1  			x.FinancialTransactionTypeGroupId 		FROM [dbo].[FinancialTransactionTypeTransactionTypeGroup] as x 		WHERE  			x.FinancialTransactionTypeId = ftt.FinancialTransactionTypeId 		ORDER BY  			x.UpdatedDate DESC 	) AS ftg ) as base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType';








GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Classification].[DimFinancialTransactionType] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Classification_DimFinancialTransactionType AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.Name = Source.Name,Target.FinancialTxCategory = Source.FinancialTxCategory,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,Name,FinancialTxCategory,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.Name,Source.FinancialTxCategory,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType';






GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialTransactionType_SourceKey]
    ON [Classification].[DimFinancialTransactionType]([SourceKey] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_DimFinancialTransactionType_ChangeVersion]
    ON [Classification].[DimFinancialTransactionType]([SYS_CHANGE_VERSION] ASC);


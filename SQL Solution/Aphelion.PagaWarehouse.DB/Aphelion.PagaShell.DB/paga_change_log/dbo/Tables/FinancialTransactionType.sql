CREATE TABLE [dbo].[FinancialTransactionType] (
    [row_id]                      INT          IDENTITY (1, 1) NOT NULL,
    [sys_created_on]              DATETIME     DEFAULT (getdate()) NOT NULL,
    [SYS_CHANGE_VERSION]          BIGINT       NULL,
    [SYS_CHANGE_CREATION_VERSION] BIGINT       NULL,
    [SYS_CHANGE_OPERATION]        CHAR (1)     NULL,
    [as_of_change_version]        BIGINT       NULL,
    [FinancialTransactionTypeId]  VARCHAR (50) NOT NULL
);










GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'
		SET NOCOUNT ON;
		SELECT 
			SYS_CHANGE_VERSION,
			SYS_CHANGE_CREATION_VERSION,
			SYS_CHANGE_OPERATION,
			CHANGE_TRACKING_CURRENT_VERSION = CHANGE_TRACKING_CURRENT_VERSION(),
			FinancialTransactionTypeId
		FROM CHANGETABLE(CHANGES [dbo].[FinancialTransactionType],0)  AS change_log', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialTransactionType';








GO
CREATE UNIQUE CLUSTERED INDEX [ix_FinancialTransactionType]
    ON [dbo].[FinancialTransactionType]([FinancialTransactionTypeId] ASC, [row_id] ASC) WITH (DATA_COMPRESSION = PAGE);


GO
EXECUTE sp_addextendedproperty @name = N'Stream3', @value = N'
		SET NOCOUNT ON;
			
		DECLARE @grp AS TINYINT = 3

		SELECT
			stream.*,
			c.SYS_CHANGE_VERSION AS InitialVersion
		FROM
		(
			SELECT
				bq.*,
				g.grp
			FROM
			( 
				SELECT 
					as_of_change_version = CHANGE_TRACKING_CURRENT_VERSION(),
					FinancialTransactionTypeId,
					ROW_NUMBER() OVER (ORDER BY FinancialTransactionTypeId) as rn
				FROM [dbo].[FinancialTransactionType]  AS bq
			) AS bq
			CROSS APPLY (SELECT (CAST(bq.rn AS VARCHAR) % 4) AS grp) as g
			WHERE 
					g.grp = @grp
		) AS stream
		CROSS APPLY 
			CHANGETABLE (VERSION FinancialTransactionType, (FinancialTransactionTypeId), (stream.FinancialTransactionTypeId)) AS c
		OPTION (MAXDOP 1)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'Stream2', @value = N'
		SET NOCOUNT ON;
			
		DECLARE @grp AS TINYINT = 2

		SELECT
			stream.*,
			c.SYS_CHANGE_VERSION AS InitialVersion
		FROM
		(
			SELECT
				bq.*,
				g.grp
			FROM
			( 
				SELECT 
					as_of_change_version = CHANGE_TRACKING_CURRENT_VERSION(),
					FinancialTransactionTypeId,
					ROW_NUMBER() OVER (ORDER BY FinancialTransactionTypeId) as rn
				FROM [dbo].[FinancialTransactionType]  AS bq
			) AS bq
			CROSS APPLY (SELECT (CAST(bq.rn AS VARCHAR) % 4) AS grp) as g
			WHERE 
					g.grp = @grp
		) AS stream
		CROSS APPLY 
			CHANGETABLE (VERSION FinancialTransactionType, (FinancialTransactionTypeId), (stream.FinancialTransactionTypeId)) AS c
		OPTION (MAXDOP 1)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'Stream1', @value = N'
		SET NOCOUNT ON;
			
		DECLARE @grp AS TINYINT = 1

		SELECT
			stream.*,
			c.SYS_CHANGE_VERSION AS InitialVersion
		FROM
		(
			SELECT
				bq.*,
				g.grp
			FROM
			( 
				SELECT 
					as_of_change_version = CHANGE_TRACKING_CURRENT_VERSION(),
					FinancialTransactionTypeId,
					ROW_NUMBER() OVER (ORDER BY FinancialTransactionTypeId) as rn
				FROM [dbo].[FinancialTransactionType]  AS bq
			) AS bq
			CROSS APPLY (SELECT (CAST(bq.rn AS VARCHAR) % 4) AS grp) as g
			WHERE 
					g.grp = @grp
		) AS stream
		CROSS APPLY 
			CHANGETABLE (VERSION FinancialTransactionType, (FinancialTransactionTypeId), (stream.FinancialTransactionTypeId)) AS c
		OPTION (MAXDOP 1)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'Stream0', @value = N'
		SET NOCOUNT ON;
			
		DECLARE @grp AS TINYINT = 0

		SELECT
			stream.*,
			c.SYS_CHANGE_VERSION AS InitialVersion
		FROM
		(
			SELECT
				bq.*,
				g.grp
			FROM
			( 
				SELECT 
					as_of_change_version = CHANGE_TRACKING_CURRENT_VERSION(),
					FinancialTransactionTypeId,
					ROW_NUMBER() OVER (ORDER BY FinancialTransactionTypeId) as rn
				FROM [dbo].[FinancialTransactionType]  AS bq
			) AS bq
			CROSS APPLY (SELECT (CAST(bq.rn AS VARCHAR) % 4) AS grp) as g
			WHERE 
					g.grp = @grp
		) AS stream
		CROSS APPLY 
			CHANGETABLE (VERSION FinancialTransactionType, (FinancialTransactionTypeId), (stream.FinancialTransactionTypeId)) AS c
		OPTION (MAXDOP 1)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FinancialTransactionType';


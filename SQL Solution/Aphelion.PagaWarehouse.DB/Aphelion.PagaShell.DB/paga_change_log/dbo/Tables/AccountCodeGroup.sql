CREATE TABLE [dbo].[AccountCodeGroup] (
    [row_id]                      INT      IDENTITY (1, 1) NOT NULL,
    [sys_created_on]              DATETIME DEFAULT (getdate()) NOT NULL,
    [SYS_CHANGE_VERSION]          BIGINT   NULL,
    [SYS_CHANGE_CREATION_VERSION] BIGINT   NULL,
    [SYS_CHANGE_OPERATION]        CHAR (1) NULL,
    [as_of_change_version]        BIGINT   NULL,
    [AccountCodeGroupId]          INT      NOT NULL
);












GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'
		-- AccountCodeGroup
		SET NOCOUNT ON;
		SELECT 
			SYS_CHANGE_VERSION,
			SYS_CHANGE_CREATION_VERSION,
			SYS_CHANGE_OPERATION = CONVERT(CHAR(1),SYS_CHANGE_OPERATION),  
			AccountCodeGroupId
		FROM CHANGETABLE(CHANGES [dbo].[AccountCodeGroup] ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AccountCodeGroup';










GO
CREATE UNIQUE CLUSTERED INDEX [ix_AccountCodeGroup]
    ON [dbo].[AccountCodeGroup]([as_of_change_version] ASC, [SYS_CHANGE_OPERATION] ASC, [AccountCodeGroupId] ASC, [row_id] ASC) WITH (DATA_COMPRESSION = PAGE);




GO
EXECUTE sp_addextendedproperty @name = N'Stream3', @value = N'
		--AccountCodeGroup
		SET NOCOUNT ON;
			
		DECLARE @grp AS TINYINT = 3

		SELECT
			stream.*,
			c.SYS_CHANGE_VERSION
		FROM
		(
			SELECT
				bq.*,
				g.grp
			FROM
			( 
				SELECT 
					as_of_change_version = CHANGE_TRACKING_CURRENT_VERSION(),
					AccountCodeGroupId,
					ROW_NUMBER() OVER (ORDER BY AccountCodeGroupId) as rn
				FROM [dbo].[AccountCodeGroup]  AS bq
			) AS bq
			CROSS APPLY (SELECT (CAST(bq.rn AS VARCHAR) % 4) AS grp) as g
			WHERE 
					g.grp = @grp
		) AS stream
		CROSS APPLY 
			CHANGETABLE (VERSION [AccountCodeGroup], (AccountCodeGroupId), (stream.AccountCodeGroupId)) AS c
		OPTION (MAXDOP 1)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AccountCodeGroup';




GO
EXECUTE sp_addextendedproperty @name = N'Stream2', @value = N'
		--AccountCodeGroup
		SET NOCOUNT ON;
			
		DECLARE @grp AS TINYINT = 2

		SELECT
			stream.*,
			c.SYS_CHANGE_VERSION
		FROM
		(
			SELECT
				bq.*,
				g.grp
			FROM
			( 
				SELECT 
					as_of_change_version = CHANGE_TRACKING_CURRENT_VERSION(),
					AccountCodeGroupId,
					ROW_NUMBER() OVER (ORDER BY AccountCodeGroupId) as rn
				FROM [dbo].[AccountCodeGroup]  AS bq
			) AS bq
			CROSS APPLY (SELECT (CAST(bq.rn AS VARCHAR) % 4) AS grp) as g
			WHERE 
					g.grp = @grp
		) AS stream
		CROSS APPLY 
			CHANGETABLE (VERSION [AccountCodeGroup], (AccountCodeGroupId), (stream.AccountCodeGroupId)) AS c
		OPTION (MAXDOP 1)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AccountCodeGroup';




GO
EXECUTE sp_addextendedproperty @name = N'Stream1', @value = N'
		--AccountCodeGroup
		SET NOCOUNT ON;
			
		DECLARE @grp AS TINYINT = 1

		SELECT
			stream.*,
			c.SYS_CHANGE_VERSION
		FROM
		(
			SELECT
				bq.*,
				g.grp
			FROM
			( 
				SELECT 
					as_of_change_version = CHANGE_TRACKING_CURRENT_VERSION(),
					AccountCodeGroupId,
					ROW_NUMBER() OVER (ORDER BY AccountCodeGroupId) as rn
				FROM [dbo].[AccountCodeGroup]  AS bq
			) AS bq
			CROSS APPLY (SELECT (CAST(bq.rn AS VARCHAR) % 4) AS grp) as g
			WHERE 
					g.grp = @grp
		) AS stream
		CROSS APPLY 
			CHANGETABLE (VERSION [AccountCodeGroup], (AccountCodeGroupId), (stream.AccountCodeGroupId)) AS c
		OPTION (MAXDOP 1)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AccountCodeGroup';




GO
EXECUTE sp_addextendedproperty @name = N'Stream0', @value = N'
		--AccountCodeGroup
		SET NOCOUNT ON;
			
		DECLARE @grp AS TINYINT = 0

		SELECT
			stream.*,
			c.SYS_CHANGE_VERSION
		FROM
		(
			SELECT
				bq.*,
				g.grp
			FROM
			( 
				SELECT 
					as_of_change_version = CHANGE_TRACKING_CURRENT_VERSION(),
					AccountCodeGroupId,
					ROW_NUMBER() OVER (ORDER BY AccountCodeGroupId) as rn
				FROM [dbo].[AccountCodeGroup]  AS bq
			) AS bq
			CROSS APPLY (SELECT (CAST(bq.rn AS VARCHAR) % 4) AS grp) as g
			WHERE 
					g.grp = @grp
		) AS stream
		CROSS APPLY 
			CHANGETABLE (VERSION [AccountCodeGroup], (AccountCodeGroupId), (stream.AccountCodeGroupId)) AS c
		OPTION (MAXDOP 1)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AccountCodeGroup';




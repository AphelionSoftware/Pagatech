CREATE TABLE [dbo].[Country] (
    [SYS_CHANGE_VERSION]          BIGINT           NULL,
    [SYS_CHANGE_CREATION_VERSION] BIGINT           NULL,
    [SYS_CHANGE_OPERATION]        NCHAR (1)        NULL,
    [SYS_CHANGE_COLUMNS]          VARBINARY (4100) NULL,
    [SYS_CHANGE_CONTEXT]          VARBINARY (128)  NULL,
    [CountryId]                   INT              NOT NULL,
    [sys_CreatedBy]               VARCHAR (255)    DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]               DATETIME         DEFAULT (getdate()) NOT NULL,
    [row_id]                      INT              IDENTITY (1, 1) NOT NULL
);






GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'
		SET NOCOUNT ON;
		SELECT 
			SYS_CHANGE_VERSION,
			SYS_CHANGE_CREATION_VERSION,
			SYS_CHANGE_OPERATION,
			SYS_CHANGE_COLUMNS,
			SYS_CHANGE_CONTEXT,
			CountryId
		FROM CHANGETABLE(CHANGES [dbo].[Country],0)  AS change_log', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Country';




GO
CREATE CLUSTERED INDEX [ix_Country_CountryId]
    ON [dbo].[Country]([CountryId] ASC, [row_id] ASC);




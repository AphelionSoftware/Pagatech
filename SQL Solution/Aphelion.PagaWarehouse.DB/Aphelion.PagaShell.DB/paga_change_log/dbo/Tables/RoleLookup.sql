CREATE TABLE [dbo].[RoleLookup] (
    [SYS_CHANGE_VERSION]          BIGINT           NULL,
    [SYS_CHANGE_CREATION_VERSION] BIGINT           NULL,
    [SYS_CHANGE_OPERATION]        NCHAR (1)        NULL,
    [SYS_CHANGE_COLUMNS]          VARBINARY (4100) NULL,
    [SYS_CHANGE_CONTEXT]          VARBINARY (128)  NULL,
    [RoleId]                      INT              NOT NULL,
    [sys_CreatedBy]               VARCHAR (255)    DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]               DATETIME         DEFAULT (getdate()) NOT NULL,
    [row_id]                      INT              IDENTITY (1, 1) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_RoleLookup_RoleId]
    ON [dbo].[RoleLookup]([RoleId] ASC, [row_id] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'
		SET NOCOUNT ON;
		SELECT 
			SYS_CHANGE_VERSION,
			SYS_CHANGE_CREATION_VERSION,
			SYS_CHANGE_OPERATION,
			SYS_CHANGE_COLUMNS,
			SYS_CHANGE_CONTEXT,
			RoleId
		FROM CHANGETABLE(CHANGES [dbo].[Role],0)  AS change_log', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RoleLookup';


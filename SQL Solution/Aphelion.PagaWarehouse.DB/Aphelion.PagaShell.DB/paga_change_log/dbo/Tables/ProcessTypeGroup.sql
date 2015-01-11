CREATE TABLE [dbo].[ProcessTypeGroup] (
    [SYS_CHANGE_VERSION]          BIGINT           NULL,
    [SYS_CHANGE_CREATION_VERSION] BIGINT           NULL,
    [SYS_CHANGE_OPERATION]        NCHAR (1)        NULL,
    [SYS_CHANGE_COLUMNS]          VARBINARY (4100) NULL,
    [SYS_CHANGE_CONTEXT]          VARBINARY (128)  NULL,
    [ProcessTypeGroupId]          VARCHAR (50)     NOT NULL
);




GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT * FROM CHANGETABLE(CHANGES dbo.ProcessTypeGroup,0)  AS change_log', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProcessTypeGroup';


GO
CREATE CLUSTERED INDEX [ix_ProcessTypeGroup_ProcessTypeGroupId]
    ON [dbo].[ProcessTypeGroup]([ProcessTypeGroupId] ASC);


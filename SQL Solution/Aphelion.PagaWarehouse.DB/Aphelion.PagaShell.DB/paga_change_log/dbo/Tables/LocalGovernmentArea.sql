CREATE TABLE [dbo].[LocalGovernmentArea] (
    [SYS_CHANGE_VERSION]          BIGINT           NULL,
    [SYS_CHANGE_CREATION_VERSION] BIGINT           NULL,
    [SYS_CHANGE_OPERATION]        NCHAR (1)        NULL,
    [SYS_CHANGE_COLUMNS]          VARBINARY (4100) NULL,
    [SYS_CHANGE_CONTEXT]          VARBINARY (128)  NULL,
    [LocalGovernmentAreaId]       INT              NOT NULL
);




GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT * FROM CHANGETABLE(CHANGES dbo.LocalGovernmentArea,0)  AS change_log', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LocalGovernmentArea';


GO
CREATE CLUSTERED INDEX [ix_LocalGovernmentArea_LocalGovernmentAreaId]
    ON [dbo].[LocalGovernmentArea]([LocalGovernmentAreaId] ASC);


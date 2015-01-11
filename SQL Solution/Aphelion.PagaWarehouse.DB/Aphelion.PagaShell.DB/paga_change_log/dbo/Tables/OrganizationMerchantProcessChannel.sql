CREATE TABLE [dbo].[OrganizationMerchantProcessChannel] (
    [SYS_CHANGE_VERSION]                   BIGINT           NULL,
    [SYS_CHANGE_CREATION_VERSION]          BIGINT           NULL,
    [SYS_CHANGE_OPERATION]                 NCHAR (1)        NULL,
    [SYS_CHANGE_COLUMNS]                   VARBINARY (4100) NULL,
    [SYS_CHANGE_CONTEXT]                   VARBINARY (128)  NULL,
    [OrganizationMerchantProcessChannelId] INT              NOT NULL
);




GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT * FROM CHANGETABLE(CHANGES dbo.OrganizationMerchantProcessChannel,0)  AS change_log', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationMerchantProcessChannel';


GO
CREATE CLUSTERED INDEX [ix_OrganizationMerchantProcessChannel_OrganizationMerchantProcessChannelId]
    ON [dbo].[OrganizationMerchantProcessChannel]([OrganizationMerchantProcessChannelId] ASC);


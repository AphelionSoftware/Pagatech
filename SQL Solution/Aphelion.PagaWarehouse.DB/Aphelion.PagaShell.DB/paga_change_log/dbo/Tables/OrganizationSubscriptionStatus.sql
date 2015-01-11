﻿CREATE TABLE [dbo].[OrganizationSubscriptionStatus] (
    [SYS_CHANGE_VERSION]               BIGINT           NULL,
    [SYS_CHANGE_CREATION_VERSION]      BIGINT           NULL,
    [SYS_CHANGE_OPERATION]             NCHAR (1)        NULL,
    [SYS_CHANGE_COLUMNS]               VARBINARY (4100) NULL,
    [SYS_CHANGE_CONTEXT]               VARBINARY (128)  NULL,
    [OrganizationSubscriptionStatusId] VARCHAR (50)     NOT NULL
);




GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT * FROM CHANGETABLE(CHANGES dbo.OrganizationSubscriptionStatus,0)  AS change_log', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationSubscriptionStatus';


GO
CREATE CLUSTERED INDEX [ix_OrganizationSubscriptionStatus_OrganizationSubscriptionStatusId]
    ON [dbo].[OrganizationSubscriptionStatus]([OrganizationSubscriptionStatusId] ASC);


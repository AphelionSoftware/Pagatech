CREATE TABLE [Shared].[DimProcessChannel] (
    [DimProcessChannelID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]           VARCHAR (255) NOT NULL,
    [Name]                VARCHAR (255) NULL,
    [SourceKeyHash]       BIGINT        NULL,
    [DeltaHash]           BIGINT        NULL,
    [sys_CreatedBy]       VARCHAR (255) NOT NULL,
    [sys_CreatedOn]       DATETIME      NOT NULL,
    [sys_ModifiedBy]      VARCHAR (255) NOT NULL,
    [sys_ModifiedOn]      DATETIME      NOT NULL,
    CONSTRAINT [pk_DimProcessChannel] PRIMARY KEY CLUSTERED ([DimProcessChannelID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimProcessChannel_SourceKey]
    ON [Shared].[DimProcessChannel]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimProcessChannel';


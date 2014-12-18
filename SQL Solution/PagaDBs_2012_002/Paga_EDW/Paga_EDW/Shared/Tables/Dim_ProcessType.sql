CREATE TABLE [Shared].[DimProcessType] (
    [DimProcessTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]        VARCHAR (255) NOT NULL,
    [Name]             VARCHAR (255) NULL,
    [SourceKeyHash]    BIGINT        NULL,
    [DeltaHash]        BIGINT        NULL,
    [sys_CreatedBy]    VARCHAR (255) NOT NULL,
    [sys_CreatedOn]    DATETIME      NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255) NOT NULL,
    [sys_ModifiedOn]   DATETIME      NOT NULL,
    CONSTRAINT [pk_DimProcessType] PRIMARY KEY CLUSTERED ([DimProcessTypeID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimProcessType_SourceKey]
    ON [Shared].[DimProcessType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimProcessType';


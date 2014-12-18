CREATE TABLE [Shared].[DimPagaAccountStatus] (
    [DimPagaAccountStatusID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]              VARCHAR (255) NOT NULL,
    [Name]                   VARCHAR (255) NULL,
    [SourceKeyHash]          BIGINT        NULL,
    [DeltaHash]              BIGINT        NULL,
    [sys_CreatedBy]          VARCHAR (255) NOT NULL,
    [sys_CreatedOn]          DATETIME      NOT NULL,
    [sys_ModifiedBy]         VARCHAR (255) NOT NULL,
    [sys_ModifiedOn]         DATETIME      NOT NULL,
    CONSTRAINT [pk_DimPagaAccountStatus] PRIMARY KEY CLUSTERED ([DimPagaAccountStatusID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimPagaAccountStatus_SourceKey]
    ON [Shared].[DimPagaAccountStatus]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccountStatus';


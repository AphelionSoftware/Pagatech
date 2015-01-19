CREATE TABLE [Staging].[Shared_DimExternalOrganization] (
    [DimExternalOrganizationID] INT           NULL,
    [DeltaHash]                 BIGINT        NULL,
    [Name]                      VARCHAR (255) NULL,
    [SourceKey]                 INT           NOT NULL,
    [SourceKeyHash]             BIGINT        NULL,
    [SYS_CHANGE_OPERATION]      CHAR (1)      DEFAULT ('I') NOT NULL
);




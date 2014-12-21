CREATE TABLE [Staging].[Dim_ExternalOrganization] (
    [DeltaHash]                 BIGINT        NULL,
    [DimExternalOrganizationID] INT           NULL,
    [Name]                      VARCHAR (255) NULL,
    [SourceKey]                 INT           NOT NULL,
    [SourceKeyHash]             BIGINT        NULL
);


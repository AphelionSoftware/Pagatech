CREATE TABLE [Errors].[DimExternalOrganization] (
    [QueueID]                   INT           NOT NULL,
    [SSISErrorCode]             INT           NOT NULL,
    [SSISErrorColumn]           INT           NOT NULL,
    [PackageName]               VARCHAR (255) NOT NULL,
    [ErrorType]                 VARCHAR (255) NOT NULL,
    [DimExternalOrganizationID] INT           NULL,
    [DeltaHash]                 BIGINT        NULL,
    [Name]                      VARCHAR (255) NULL,
    [SourceKey]                 INT           NOT NULL,
    [SourceKeyHash]             BIGINT        NULL
);




CREATE TABLE [Errors].[Dim_ExternalOrganization] (
    [QueueID]                   INT            NOT NULL,
    [SSISErrorCode]             INT            NOT NULL,
    [SSISErrorColumn]           INT            NOT NULL,
    [PackageName]               VARCHAR (255)  NOT NULL,
    [ErrorType]                 VARCHAR (255)  NOT NULL,
    [DimExternalOrganizationID] INT            NOT NULL,
    [Name]                      NVARCHAR (100) NULL,
    [SourceKey]                 INT            NULL,
    [DeltaHash]                 BIGINT         NULL,
    [SourceKeyHash]             BIGINT         NULL
);


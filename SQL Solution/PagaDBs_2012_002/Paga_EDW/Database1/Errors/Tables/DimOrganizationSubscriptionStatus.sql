CREATE TABLE [Errors].[DimOrganizationSubscriptionStatus] (
    [QueueID]                             INT           NOT NULL,
    [SSISErrorCode]                       INT           NOT NULL,
    [SSISErrorColumn]                     INT           NOT NULL,
    [PackageName]                         VARCHAR (255) NOT NULL,
    [ErrorType]                           VARCHAR (255) NOT NULL,
    [DimOrganizationSubscriptionStatusID] INT           NULL,
    [DeltaHash]                           BIGINT        NULL,
    [Name]                                VARCHAR (255) NOT NULL,
    [SourceKey]                           VARCHAR (255) NOT NULL,
    [SourceKeyHash]                       BIGINT        NULL
);


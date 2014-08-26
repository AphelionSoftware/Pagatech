CREATE TABLE [Staging].[DimOrganizationSubscriptionStatus] (
    [DimOrganizationSubscriptionStatusID] INT           NULL,
    [Code]                                VARCHAR (50)  NOT NULL,
    [DeltaHash]                           BIGINT        NOT NULL,
    [Name]                                VARCHAR (255) NOT NULL,
    [SourceKey]                           VARCHAR (255) NOT NULL,
    [SourceKeyHash]                       BIGINT        NOT NULL
);




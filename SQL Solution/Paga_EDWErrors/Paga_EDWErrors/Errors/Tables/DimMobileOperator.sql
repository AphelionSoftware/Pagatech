CREATE TABLE [Errors].[DimMobileOperator] (
    [QueueID]             INT           NOT NULL,
    [ErrorCode]           INT           NOT NULL,
    [ErrorColumn]         INT           NOT NULL,
    [PackageName]         VARCHAR (255) NOT NULL,
    [DimMobileOperatorID] INT           NULL,
    [Code]                VARCHAR (50)  NOT NULL,
    [DeltaHash]           BIGINT        NOT NULL,
    [DimOrganizationID]   INT           NOT NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [SourceKey]           VARCHAR (255) NOT NULL,
    [SourceKeyHash]       BIGINT        NOT NULL,
    [sysCreatedBy]        VARCHAR (255) NOT NULL,
    [sysCreatedOn]        DATETIME      NOT NULL,
    [sysModifiedBy]       VARCHAR (255) NOT NULL,
    [sysModifiedOn]       DATETIME      NOT NULL
);


CREATE TABLE [Errors].[DimInitiatingUserRole] (
    [QueueID]                 INT           NOT NULL,
    [SSISErrorCode]           INT           NOT NULL,
    [SSISErrorColumn]         INT           NOT NULL,
    [PackageName]             VARCHAR (255) NOT NULL,
    [ErrorType]               VARCHAR (255) NOT NULL,
    [DimInitiatingUserRoleID] INT           NOT NULL,
    [DimRoleID]               INT           NULL,
    [DimUserID]               INT           NULL,
    [Role_SourceKey]          INT           NULL,
    [User_SourceKey]          INT           NULL,
    [DeltaHash]               BIGINT        NULL,
    [Name]                    VARCHAR (255) NULL,
    [SourceKey]               INT           NULL,
    [SourceKeyHash]           BIGINT        NULL
);


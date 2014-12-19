CREATE TABLE [Errors].[DimRole] (
    [QueueID]           INT            NOT NULL,
    [SSISErrorCode]     INT            NOT NULL,
    [SSISErrorColumn]   INT            NOT NULL,
    [PackageName]       VARCHAR (255)  NOT NULL,
    [ErrorType]         VARCHAR (255)  NOT NULL,
    [DescriptionText]   NVARCHAR (255) NULL,
    [DimRoleID]         INT            NOT NULL,
    [Name]              NVARCHAR (50)  NULL,
    [SourceKey]         INT            NOT NULL,
    [SystemDescription] VARCHAR (100)  NULL,
    [DeltaHash]         BIGINT         NULL,
    [SourceKeyHash]     BIGINT         NULL
);


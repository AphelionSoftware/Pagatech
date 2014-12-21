CREATE TABLE [Errors].[Shared_DimGender] (
    [QueueID]         INT           NOT NULL,
    [SSISErrorCode]   INT           NOT NULL,
    [SSISErrorColumn] INT           NOT NULL,
    [PackageName]     VARCHAR (255) NOT NULL,
    [ErrorType]       VARCHAR (255) NOT NULL,
    [DeltaHash]       BIGINT        NULL,
    [DimGenderID]     INT           NULL,
    [Name]            VARCHAR (255) NULL,
    [SourceKey]       VARCHAR (255) NOT NULL,
    [SourceKeyHash]   BIGINT        NULL
);


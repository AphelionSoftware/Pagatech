CREATE TABLE [Errors].[Classification_DimOrganizationVerificationStatus] (
    [QueueID]         INT           NOT NULL,
    [SSISErrorCode]   INT           NOT NULL,
    [SSISErrorColumn] INT           NOT NULL,
    [PackageName]     VARCHAR (255) NOT NULL,
    [ErrorType]       VARCHAR (255) NOT NULL,
    [Name]            VARCHAR (255) NOT NULL,
    [SourceKey]       VARCHAR (255) NOT NULL
);








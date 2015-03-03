CREATE TABLE [Errors].[Shared_DimUser] (
    [QueueID]                 INT           NOT NULL,
    [SSISErrorCode]           INT           NOT NULL,
    [SSISErrorColumn]         INT           NOT NULL,
    [PackageName]             VARCHAR (255) NOT NULL,
    [ErrorType]               VARCHAR (255) NOT NULL,
    [DimCreatedDateID]        INT           NOT NULL,
    [DimDateOfBirthID]        INT           NULL,
    [DimPrimaryRoleSourceKey] INT           NOT NULL,
    [Email]                   VARCHAR (100) NULL,
    [FirstName]               VARCHAR (255) NULL,
    [Gender]                  VARCHAR (50)  NULL,
    [IsEnabled]               BIT           NULL,
    [LastName]                VARCHAR (255) NULL,
    [MiddleName]              VARCHAR (255) NULL,
    [SourceKey]               INT           NOT NULL
);














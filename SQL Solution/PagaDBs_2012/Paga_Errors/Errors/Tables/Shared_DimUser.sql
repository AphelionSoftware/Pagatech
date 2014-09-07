CREATE TABLE [Errors].[Shared_DimUser] (
    [QueueID]          INT           NOT NULL,
    [SSISErrorCode]    INT           NOT NULL,
    [SSISErrorColumn]  INT           NOT NULL,
    [PackageName]      VARCHAR (255) NOT NULL,
    [ErrorType]        VARCHAR (255) NOT NULL,
    [change_operation] CHAR (1)      NOT NULL,
    [DateOfBirthID]    INT           NULL,
    [DimRoleSourceKey] VARCHAR (255) NOT NULL,
    [Email]            VARCHAR (100) NULL,
    [FirstName]        VARCHAR (255) NULL,
    [LastName]         VARCHAR (255) NULL,
    [MiddleName]       VARCHAR (255) NULL,
    [Name]             VARCHAR (255) NOT NULL,
    [Sex]              CHAR (1)      NULL,
    [SourceKey]        VARCHAR (255) NOT NULL
);




CREATE TABLE [Errors].[Shared_DimDealer] (
    [QueueID]         INT           NOT NULL,
    [SSISErrorCode]   INT           NOT NULL,
    [SSISErrorColumn] INT           NOT NULL,
    [PackageName]     VARCHAR (255) NOT NULL,
    [ErrorType]       VARCHAR (255) NOT NULL,
    [Code]            VARCHAR (50)  NOT NULL,
    [DateOfBirthID]   INT           NOT NULL,
    [Email]           VARCHAR (100) NULL,
    [FirstName]       VARCHAR (255) NULL,
    [LastName]        VARCHAR (255) NULL,
    [MiddleName]      VARCHAR (255) NULL,
    [Name]            VARCHAR (255) NOT NULL,
    [RoleSourceKey]   INT           NOT NULL,
    [Sex]             CHAR (1)      NULL
);


CREATE TABLE [Errors].[Shared_DimUser] (
    [QueueID]              INT             NOT NULL,
    [SSISErrorCode]        INT             NOT NULL,
    [SSISErrorColumn]      INT             NOT NULL,
    [PackageName]          VARCHAR (255)   NOT NULL,
    [ErrorType]            VARCHAR (255)   NOT NULL,
    [SourceKey]            INT             NOT NULL,
    [DateOfBirthSourceKey] INT             NULL,
    [FirstName]            VARCHAR (255)   NULL,
    [MiddleName]           VARCHAR (255)   NULL,
    [LastName]             VARCHAR (255)   NULL,
    [Gender]               VARCHAR (50)    NULL,
    [PhoneNumber]          VARBINARY (256) NULL,
    [Email]                VARCHAR (100)   NULL,
    [IsEnabled]            BIT             NULL,
    [PrimaryRoleSourceKey] INT             NOT NULL,
    [DimCreatedDateID]     INT             NOT NULL,
    [Name]                 VARCHAR (255)   NULL,
    [SYS_CHANGE_VERSION]   BIGINT          NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)        NOT NULL
);


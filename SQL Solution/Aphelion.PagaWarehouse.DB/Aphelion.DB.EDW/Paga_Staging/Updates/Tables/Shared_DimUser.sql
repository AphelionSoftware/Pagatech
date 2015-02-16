CREATE TABLE [Updates].[Shared_DimUser] (
    [SourceKey]        INT             NOT NULL,
    [DimDateOfBirthID] INT             NULL,
    [FirstName]        VARCHAR (255)   NULL,
    [MiddleName]       VARCHAR (255)   NULL,
    [LastName]         VARCHAR (255)   NULL,
    [Gender]           VARCHAR (50)    NULL,
    [PhoneNumber]      VARBINARY (256) NULL,
    [Email]            VARCHAR (100)   NULL,
    [IsEnabled]        BIT             NULL,
    [DimPrimaryRoleID] INT             NOT NULL,
    [DimCreatedDateID] INT             NOT NULL
);


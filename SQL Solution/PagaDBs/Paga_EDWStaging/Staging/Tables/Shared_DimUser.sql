CREATE TABLE [Staging].[Shared_DimUser] (
    [Name]          VARCHAR (255)   NOT NULL,
    [Code]          VARCHAR (50)    NOT NULL,
    [DateOfBirthID] INT             NOT NULL,
    [RoleSourceKey] INT             NOT NULL,
    [FirstName]     VARCHAR (255)   NULL,
    [MiddleName]    VARCHAR (255)   NULL,
    [LastName]      VARCHAR (255)   NULL,
    [Sex]           CHAR (1)        NULL,
    [PhoneNumber]   VARBINARY (256) NULL,
    [Email]         VARCHAR (100)   NULL,
    [IsEnabled]     BIT             NULL
);


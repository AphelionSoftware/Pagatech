CREATE TABLE [Staging].[Shared_DimUser] (
    [SourceKey]        VARCHAR (255)   NOT NULL,
    [Name]             VARCHAR (255)   NOT NULL,
    [DateOfBirthID]    INT             NULL,
	DimPagaAccountSourceKey INT NULL,
    [FirstName]        VARCHAR (255)   NULL,
    [MiddleName]       VARCHAR (255)   NULL,
    [LastName]         VARCHAR (255)   NULL,
    [Sex]              VARCHAR (50)    NULL,
    [PhoneNumber]      VARBINARY (256) NULL,
    [Email]            VARCHAR (100)   NULL,
    [IsEnabled]        BIT             NULL,
    [CreatedDateID]    INT             NULL
);














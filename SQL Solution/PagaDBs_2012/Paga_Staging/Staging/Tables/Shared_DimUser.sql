CREATE TABLE [Staging].[Shared_DimUser] (
    [Email]                              VARCHAR (100) NULL,
    [FirstName]                          VARCHAR (255) NULL,
    [IsEnabled]                          BIT           NULL,
    [LastName]                           VARCHAR (255) NULL,
    [MiddleName]                         VARCHAR (255) NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [Sex]                                VARCHAR (50)  NULL,
    [SourceKey]                          VARCHAR (255) NOT NULL,
    [CreatedDateID]                      INT           NOT NULL,
    [DateOfBirthID]                      INT           NULL,
    [DimOrganizationUnitLevel4SourceKey] VARCHAR (255) NULL,
    [DimPagaAccountSourceKey]            VARCHAR (255) NULL,
    [change_operation]                   CHAR (1)      DEFAULT ((1)) NOT NULL
);
















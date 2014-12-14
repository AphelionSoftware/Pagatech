CREATE TABLE [Errors].[Shared_DimUser] (
    [QueueID]                            INT           NOT NULL,
    [SSISErrorCode]                      INT           NOT NULL,
    [SSISErrorColumn]                    INT           NOT NULL,
    [PackageName]                        VARCHAR (255) NOT NULL,
    [ErrorType]                          VARCHAR (255) NOT NULL,
    [change_operation]                   CHAR (1)      NOT NULL,
    [CreatedDateID]                      INT           NOT NULL,
    [DateOfBirthID]                      INT           NULL,
    [DimOrganizationUnitLevel4SourceKey] VARCHAR (255) NULL,
    [DimPagaAccountSourceKey]            VARCHAR (255) NULL,
    [Email]                              VARCHAR (100) NULL,
    [FirstName]                          VARCHAR (255) NULL,
    [IsEnabled]                          BIT           NULL,
    [LastName]                           VARCHAR (255) NULL,
    [MiddleName]                         VARCHAR (255) NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [Sex]                                VARCHAR (50)  NULL,
    [SourceKey]                          VARCHAR (255) NOT NULL
);


CREATE TABLE [Errors].[Shared_DimUser] (
    [QueueID]                            INT           NOT NULL,
    [SSISErrorCode]                      INT           NOT NULL,
    [SSISErrorColumn]                    INT           NOT NULL,
    [PackageName]                        VARCHAR (255) NOT NULL,
    [ErrorType]                          VARCHAR (255) NOT NULL,
    [CreatedDateID]                      INT           NOT NULL,
    [DateOfBirthID]                      INT           NULL,
    [DimOrganizationUnitLevel4SourceKey] INT           NULL,
    [DimPagaAccountSourceKey]            INT           NULL,
    [Email]                              VARCHAR (100) NULL,
    [FirstName]                          VARCHAR (255) NULL,
    [Gender]                             VARCHAR (50)  NULL,
    [IsEnabled]                          BIT           NULL,
    [LastName]                           VARCHAR (255) NULL,
    [MiddleName]                         VARCHAR (255) NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          INT           NOT NULL,
    [SYS_CHANGE_OPERATION]               CHAR (1)      NOT NULL,
    [SYS_CHANGE_VERSION]                 BIGINT        NOT NULL
);








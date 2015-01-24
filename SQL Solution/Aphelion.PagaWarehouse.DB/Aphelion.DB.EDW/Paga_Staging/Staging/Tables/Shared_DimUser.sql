CREATE TABLE [Staging].[Shared_DimUser] (
    [Email]                              VARCHAR (100) NULL,
    [FirstName]                          VARCHAR (255) NULL,
    [IsEnabled]                          BIT           NULL,
    [LastName]                           VARCHAR (255) NULL,
    [MiddleName]                         VARCHAR (255) NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [Sex]                                VARCHAR (50)  NULL,
    [SourceKey]                          INT           NOT NULL,
    [CreatedDateID]                      INT           NOT NULL,
    [DateOfBirthID]                      INT           NULL,
    [DimOrganizationUnitLevel4SourceKey] INT           NULL,
    [DimPagaAccountSourceKey]            INT           NULL,
    [SYS_CHANGE_VERSION]                 BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]               CHAR (1)      DEFAULT ('I') NOT NULL
);














GO





CREATE TABLE [Staging].[DimUser] (
    [DimUserID]                   INT           NULL,
    [DeltaHash]                   BIGINT        NULL,
    [Email]                       VARCHAR (100) NULL,
    [FirstName]                   VARCHAR (255) NULL,
    [IsEnabled]                   BIT           NULL,
    [LastName]                    VARCHAR (255) NULL,
    [MiddleName]                  VARCHAR (255) NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [Sex]                         VARCHAR (50)  NULL,
    [SourceKey]                   VARCHAR (255) NOT NULL,
    [SourceKeyHash]               BIGINT        NULL,
    [CreatedDateID]               INT           NOT NULL,
    [DateOfBirthID]               INT           NULL,
    [DimOrganizationUnitLevel4ID] INT           NULL,
    [DimPagaAccountSourceKey]     VARCHAR (255) NULL
);


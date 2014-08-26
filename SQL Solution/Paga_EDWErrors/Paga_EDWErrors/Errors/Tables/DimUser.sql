CREATE TABLE [Errors].[DimUser] (
    [QueueID]                     INT           NOT NULL,
    [ErrorCode]                   INT           NOT NULL,
    [ErrorColumn]                 INT           NOT NULL,
    [PackageName]                 VARCHAR (255) NOT NULL,
    [DimUserID]                   INT           NULL,
    [Code]                        VARCHAR (50)  NOT NULL,
    [DateOfBirthID]               INT           NOT NULL,
    [DeltaHash]                   BIGINT        NOT NULL,
    [DimOrganizationUnitLevel5ID] INT           NOT NULL,
    [DimPagaAccountID]            INT           NOT NULL,
    [DimPagaAccountUserTypeID]    INT           NOT NULL,
    [Email]                       VARCHAR (100) NULL,
    [FirstName]                   VARCHAR (255) NULL,
    [LastName]                    VARCHAR (255) NULL,
    [MiddleName]                  VARCHAR (255) NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [Sex]                         CHAR (1)      NULL,
    [SourceKey]                   VARCHAR (255) NOT NULL,
    [SourceKeyHash]               BIGINT        NOT NULL
);




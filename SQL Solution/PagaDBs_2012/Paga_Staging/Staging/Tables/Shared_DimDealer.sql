CREATE TABLE [Staging].[Shared_DimDealer] (
    [Email]            VARCHAR (100) NULL,
    [FirstName]        VARCHAR (255) NULL,
    [LastName]         VARCHAR (255) NULL,
    [MiddleName]       VARCHAR (255) NULL,
    [Name]             VARCHAR (255) NOT NULL,
    [Sex]              CHAR (1)      NULL,
    [SourceKey]        VARCHAR (255) NOT NULL,
    [DateOfBirthID]    INT           NOT NULL,
    [DimRoleSourceKey] VARCHAR (255) NOT NULL,
    [change_operation] CHAR (1)      DEFAULT ((1)) NOT NULL
);










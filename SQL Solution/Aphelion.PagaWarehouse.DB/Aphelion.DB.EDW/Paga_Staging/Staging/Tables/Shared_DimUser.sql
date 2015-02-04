CREATE TABLE [Staging].[Shared_DimUser] (
    [Email]                   VARCHAR (100) NULL,
    [FirstName]               VARCHAR (255) NULL,
    [Gender]                  VARCHAR (50)  NULL,
    [IsEnabled]               BIT           NULL,
    [LastName]                VARCHAR (255) NULL,
    [MiddleName]              VARCHAR (255) NULL,
    [SourceKey]               INT           NOT NULL,
    [DimCreatedDateID]        INT           NOT NULL,
    [DimDateOfBirthID]        INT           NULL,
    [DimimPraryRoleSourceKey] INT           NOT NULL
);






















GO



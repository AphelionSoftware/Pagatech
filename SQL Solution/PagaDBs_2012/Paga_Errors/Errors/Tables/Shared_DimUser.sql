CREATE TABLE [Errors].[Shared_DimUser] (
    [QueueID]                 INT           NOT NULL,
    [SSISErrorCode]           INT           NOT NULL,
    [SSISErrorColumn]         INT           NOT NULL,
    [PackageName]             VARCHAR (255) NOT NULL,
    [ErrorType]               VARCHAR (255) NOT NULL,
    [CreatedDateID]           INT           NULL,
    [DateOfBirthID]           INT           NULL,
    [DimPagaAccountSourceKey] INT           NULL,
    [Email]                   VARCHAR (100) NULL,
    [FirstName]               VARCHAR (255) NULL,
    [IsEnabled]               BIT           NULL,
    [LastName]                VARCHAR (255) NULL,
    [MiddleName]              VARCHAR (255) NULL,
    [Name]                    VARCHAR (255) NOT NULL,
    [Sex]                     VARCHAR (50)  NULL,
    [SourceKey]               VARCHAR (255) NOT NULL
);




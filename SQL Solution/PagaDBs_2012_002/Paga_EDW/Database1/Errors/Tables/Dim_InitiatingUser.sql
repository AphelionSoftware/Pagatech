CREATE TABLE [Errors].[Dim_InitiatingUser] (
    [QueueID]             INT           NOT NULL,
    [SSISErrorCode]       INT           NOT NULL,
    [SSISErrorColumn]     INT           NOT NULL,
    [PackageName]         VARCHAR (255) NOT NULL,
    [ErrorType]           VARCHAR (255) NOT NULL,
    [DimCreatedDateID]    INT           NULL,
    [DimDateOfBirthID]    INT           NULL,
    [DimGenderID]         INT           NULL,
    [DimInitiatingUserID] INT           NOT NULL,
    [DimRoleID]           INT           NULL,
    [FirstName]           VARCHAR (50)  NULL,
    [LastName]            VARCHAR (50)  NULL,
    [MiddleName]          VARCHAR (50)  NULL,
    [SourceKey]           INT           NOT NULL,
    [UserDescription]     VARCHAR (100) NULL
);


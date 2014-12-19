CREATE TABLE [Errors].[DimUser] (
    [QueueID]          INT           NOT NULL,
    [SSISErrorCode]    INT           NOT NULL,
    [SSISErrorColumn]  INT           NOT NULL,
    [PackageName]      VARCHAR (255) NOT NULL,
    [ErrorType]        VARCHAR (255) NOT NULL,
    [DimCreatedDateID] INT           NULL,
    [DimDateOfBirthID] INT           NULL,
    [DimUserID]        INT           NOT NULL,
    [FirstName]        NVARCHAR (30) NULL,
    [Gender_SourceKey] VARCHAR (50)  NULL,
    [LastName]         NVARCHAR (30) NULL,
    [MiddleName]       NVARCHAR (30) NULL,
    [SourceKey]        INT           NOT NULL,
    [UserDescription]  VARCHAR (100) NULL,
    [DeltaHash]        BIGINT        NULL,
    [SourceKeyHash]    BIGINT        NULL,
    [DimGenderID]      INT           NULL
);


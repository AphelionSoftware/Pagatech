CREATE TABLE [Staging].[Dim_User] (
    [DeltaHash]           BIGINT        NULL,
    [DimCreatedDateID]    INT           NULL,
    [DimUserID]           INT           NULL,
    [FirstName]           VARCHAR (50)  NULL,
    [LastName]            VARCHAR (50)  NULL,
    [MiddleName]          VARCHAR (50)  NULL,
    [SourceKey]           INT           NOT NULL,
    [SourceKeyHash]       BIGINT        NULL,
    [UserDescription]     VARCHAR (100) NULL,
    [DimDateOfBirthID]    INT           NULL,
    [Dim_GenderSourceKey] VARCHAR (255) NULL
);


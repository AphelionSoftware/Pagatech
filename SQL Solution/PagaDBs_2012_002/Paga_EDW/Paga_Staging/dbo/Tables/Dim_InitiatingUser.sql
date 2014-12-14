CREATE TABLE [dbo].[Dim_InitiatingUser] (
    [DimInitiatingUserID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]           INT           NOT NULL,
    [DimCreatedDateID]    INT           NULL,
    [FirstName]           VARCHAR (50)  NULL,
    [LastName]            VARCHAR (50)  NULL,
    [MiddleName]          VARCHAR (50)  NULL,
    [UserDescription]     VARCHAR (100) NULL,
    [DimGenderID]         INT           NULL,
    [DimDateOfBirthID]    INT           NULL,
    [DimRoleID]           INT           NULL
);


CREATE TABLE [dbo].[Dim_User] (
    [DimUserID]        INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]        INT           NOT NULL,
    [DimCreatedDateID] INT           NULL,
    [FirstName]        NVARCHAR (30) NULL,
    [LastName]         NVARCHAR (30) NULL,
    [MiddleName]       NVARCHAR (30) NULL,
    [UserDescription]  VARCHAR (100) NULL,
    [Gender_SourceKey] VARCHAR (50)  NULL,
    [DimDateOfBirthID] INT           NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimUser_SourceKey]
    ON [dbo].[Dim_User]([SourceKey] ASC);


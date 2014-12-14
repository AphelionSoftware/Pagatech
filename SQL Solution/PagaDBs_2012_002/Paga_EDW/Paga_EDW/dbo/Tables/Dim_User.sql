CREATE TABLE [dbo].[Dim_User] (
    [DimUserID]        INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]        INT           NOT NULL,
    [DimCreatedDateID] INT           NULL,
    [FirstName]        VARCHAR (50)  NULL,
    [LastName]         VARCHAR (50)  NULL,
    [MiddleName]       VARCHAR (50)  NULL,
    [UserDescription]  VARCHAR (100) NULL,
    [DimGenderID]      INT           NULL,
    [DimDateOfBirthID] INT           NULL,
    [SourceKeyHash]    BIGINT        NULL,
    [DeltaHash]        BIGINT        NULL,
    [sys_CreatedBy]    VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]    DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]   DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_Dim_User] PRIMARY KEY CLUSTERED ([DimUserID] ASC),
    CONSTRAINT [fk_DimUser_DimDateOfBirthID] FOREIGN KEY ([DimDateOfBirthID]) REFERENCES [dbo].[Dim_Date] ([DimDateID]),
    CONSTRAINT [fk_DimUser_DimGenderID] FOREIGN KEY ([DimGenderID]) REFERENCES [dbo].[Dim_Gender] ([DimGenderID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimUser_SourceKey]
    ON [dbo].[Dim_User]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Dim_User';


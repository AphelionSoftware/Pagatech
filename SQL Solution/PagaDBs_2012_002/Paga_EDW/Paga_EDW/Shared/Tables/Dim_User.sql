CREATE TABLE [Shared].[DimUser] (
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
    [sys_CreatedBy]    VARCHAR (255) NOT NULL,
    [sys_CreatedOn]    DATETIME      NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255) NOT NULL,
    [sys_ModifiedOn]   DATETIME      NOT NULL,
    CONSTRAINT [pk_DimUser] PRIMARY KEY CLUSTERED ([DimUserID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimUser_SourceKey]
    ON [Shared].[DimUser]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';


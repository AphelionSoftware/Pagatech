CREATE TABLE [Shared].[DimUser] (
    [DimUserID]      INT             NOT NULL,
    [SourceKey]      VARCHAR (255)   NOT NULL,
    [Name]           VARCHAR (255)   NOT NULL,
    [DateOfBirthID]  INT             NULL,
    [DimRoleID]      INT             NOT NULL,
    [FirstName]      VARCHAR (255)   NULL,
    [MiddleName]     VARCHAR (255)   NULL,
    [LastName]       VARCHAR (255)   NULL,
    [Sex]            CHAR (1)        NULL,
    [PhoneNumber]    VARBINARY (256) NULL,
    [Email]          VARCHAR (100)   NULL,
    [IsEnabled]      BIT             NULL,
    [SourceKeyHash]  BIGINT          NOT NULL,
    [DeltaHash]      BIGINT          NOT NULL,
    [sys_ModifiedBy] VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimUserID] PRIMARY KEY CLUSTERED ([DimUserID] ASC),
    CONSTRAINT [fk_DimUser_DateOfBirthID] FOREIGN KEY ([DateOfBirthID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_DimUser_DimRoleID] FOREIGN KEY ([DimRoleID]) REFERENCES [Shared].[DimRole] ([DimRoleID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimUser_SourceKey]
    ON [Shared].[DimUser]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromOLAP', @value = N'true', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';


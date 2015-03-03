CREATE TABLE [Updates].[Shared_DimUser] (
    [SourceKey]            INT             NOT NULL,
    [DimDateOfBirthID]     INT             NULL,
    [FirstName]            VARCHAR (255)   NULL,
    [MiddleName]           VARCHAR (255)   NULL,
    [LastName]             VARCHAR (255)   NULL,
    [Gender]               VARCHAR (50)    NULL,
    [PhoneNumber]          VARBINARY (256) NULL,
    [Email]                VARCHAR (100)   NULL,
    [IsEnabled]            BIT             NULL,
    [DimPrimaryRoleID]     INT             NOT NULL,
    [DimCreatedDateID]     INT             NOT NULL,
    [Name]                 VARCHAR (255)   NULL,
    [SYS_CHANGE_VERSION]   BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)        DEFAULT ('I') NOT NULL
);






GO
CREATE CLUSTERED INDEX [ix_Shared_DimUser_SourceKey]
    ON [Updates].[Shared_DimUser]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);


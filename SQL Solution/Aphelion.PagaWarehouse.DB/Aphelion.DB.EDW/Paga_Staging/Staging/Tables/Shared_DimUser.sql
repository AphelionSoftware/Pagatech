CREATE TABLE [Staging].[Shared_DimUser] (
    [Email]                VARCHAR (100) NULL,
    [FirstName]            VARCHAR (255) NULL,
    [Gender]               VARCHAR (50)  NULL,
    [IsEnabled]            BIT           NULL,
    [LastName]             VARCHAR (255) NULL,
    [MiddleName]           VARCHAR (255) NULL,
    [SourceKey]            INT           NOT NULL,
    [DimCreatedDateID]     INT           NOT NULL,
    [DimDateOfBirthID]     INT           NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




















GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_DimUser]
    ON [Staging].[Shared_DimUser]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);


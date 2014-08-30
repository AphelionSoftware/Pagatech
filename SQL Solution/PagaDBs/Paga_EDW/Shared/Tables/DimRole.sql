CREATE TABLE [Shared].[DimRole] (
    [DimRoleID]      INT            NOT NULL,
    [SourceKey]      VARCHAR (255)  NOT NULL,
    [Name]           VARCHAR (255)  NOT NULL,
    [Code]           VARCHAR (50)   NOT NULL,
    [Description]    VARCHAR (1000) NULL,
    [SourceKeyHash]  BIGINT         NOT NULL,
    [DeltaHash]      BIGINT         NOT NULL,
    [sys_ModifiedBy] VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimRoleID] PRIMARY KEY CLUSTERED ([DimRoleID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimRole_SourceKey]
    ON [Shared].[DimRole]([SourceKey] ASC);


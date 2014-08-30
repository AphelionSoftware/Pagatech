CREATE TABLE [Classification].[DimProcessTypeGroup] (
    [DimProcessTypeGroupID] INT            NOT NULL,
    [SourceKey]             VARCHAR (255)  NOT NULL,
    [Name]                  VARCHAR (255)  NOT NULL,
    [Description]           VARCHAR (1000) NULL,
    [SourceKeyHash]         BIGINT         NOT NULL,
    [DeltaHash]             BIGINT         NOT NULL,
    [sys_ModifiedBy]        VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]        DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]         VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]         DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimProcessTypeGroupID] PRIMARY KEY CLUSTERED ([DimProcessTypeGroupID] ASC)
);


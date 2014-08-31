CREATE TABLE [Classification].[DimProcessType] (
    [DimProcessTypeID]      INT            NOT NULL,
    [SourceKey]             VARCHAR (255)  NOT NULL,
    [Name]                  VARCHAR (255)  NOT NULL,
    [DimProcessTypeGroupID] INT            NOT NULL,
    [Description]           VARCHAR (1000) NULL,
    [SourceKeyHash]         BIGINT         NOT NULL,
    [DeltaHash]             BIGINT         NOT NULL,
    [sys_ModifiedBy]        VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]        DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]         VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]         DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimProcessTypeID] PRIMARY KEY CLUSTERED ([DimProcessTypeID] ASC),
    CONSTRAINT [fk_DimProcessType_DimProcessTypeGroup] FOREIGN KEY ([DimProcessTypeGroupID]) REFERENCES [Classification].[DimProcessTypeGroup] ([DimProcessTypeGroupID])
);


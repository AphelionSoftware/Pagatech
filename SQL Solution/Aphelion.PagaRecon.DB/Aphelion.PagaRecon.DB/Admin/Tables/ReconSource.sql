CREATE TABLE [Admin].[ReconSource] (
    [ID]                INT           NOT NULL,
    [Code]              VARCHAR (50)  NOT NULL,
    [Name]              VARCHAR (255) NULL,
    [ReconSourceTypeID] INT           NOT NULL,
    [sys_CreatedBy]     VARCHAR (255) CONSTRAINT [DF_ReconSource_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]     DATETIME      CONSTRAINT [DF_ReconSource_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]    VARCHAR (255) CONSTRAINT [DF_ReconSource_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]    DATETIME      CONSTRAINT [DF_ReconSource_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ReconSource] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ReconSource_ReconSourceType] FOREIGN KEY ([ReconSourceTypeID]) REFERENCES [Admin].[ReconSourceType] ([ID]),
    CONSTRAINT [UQ_ReconSource_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);


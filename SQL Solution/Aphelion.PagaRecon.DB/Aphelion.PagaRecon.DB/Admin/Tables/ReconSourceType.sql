CREATE TABLE [Admin].[ReconSourceType] (
    [ID]             INT           NOT NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [Name]           VARCHAR (255) NULL,
    [sys_CreatedBy]  VARCHAR (255) CONSTRAINT [DF_ReconSourceType_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME      CONSTRAINT [DF_ReconSourceType_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) CONSTRAINT [DF_ReconSourceType_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME      CONSTRAINT [DF_ReconSourceType_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ReconSourceType] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQ_ReconSourceType_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);


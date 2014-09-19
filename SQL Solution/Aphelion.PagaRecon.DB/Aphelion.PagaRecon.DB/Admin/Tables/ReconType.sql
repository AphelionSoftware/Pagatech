CREATE TABLE [Admin].[ReconType] (
    [ID]             INT           IDENTITY (1, 1) NOT NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [Name]           VARCHAR (255) NULL,
    [sys_CreatedBy]  VARCHAR (255) CONSTRAINT [DF_ReconType_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME      CONSTRAINT [DF_ReconType_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) CONSTRAINT [DF_ReconType_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME      CONSTRAINT [DF_ReconType_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ReconType] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQ_ReconType_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);




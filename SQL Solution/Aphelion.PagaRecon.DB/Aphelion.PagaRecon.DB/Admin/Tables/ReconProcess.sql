CREATE TABLE [Admin].[ReconProcess] (
    [ID]                  INT           NOT NULL,
    [Code]                VARCHAR (50)  NOT NULL,
    [Name]                VARCHAR (255) NULL,
    [BaseReconSourceID]   INT           NOT NULL,
    [TargetReconSourceID] INT           NOT NULL,
    [ReconTypeID]         INT           NOT NULL,
    [sys_CreatedBy]       VARCHAR (255) CONSTRAINT [DF_ReconProcess_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]       DATETIME      CONSTRAINT [DF_ReconProcess_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]      VARCHAR (255) CONSTRAINT [DF_ReconProcess_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]      DATETIME      CONSTRAINT [DF_ReconProcess_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ReconProcess] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ReconProcess_ReconSource] FOREIGN KEY ([BaseReconSourceID]) REFERENCES [Admin].[ReconSource] ([ID]),
    CONSTRAINT [FK_ReconProcess_ReconSource1] FOREIGN KEY ([TargetReconSourceID]) REFERENCES [Admin].[ReconSource] ([ID]),
    CONSTRAINT [FK_ReconProcess_ReconType] FOREIGN KEY ([ReconTypeID]) REFERENCES [Admin].[ReconType] ([ID]),
    CONSTRAINT [UQ_ReconProcess_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);


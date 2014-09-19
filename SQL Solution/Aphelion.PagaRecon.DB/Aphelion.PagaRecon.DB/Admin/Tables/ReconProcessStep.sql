CREATE TABLE [Admin].[ReconProcessStep] (
    [ID]                  INT           IDENTITY (1, 1) NOT NULL,
    [Code]                VARCHAR (50)  NOT NULL,
    [Order]               INT           CONSTRAINT [DF_ReconProcessStep_Order] DEFAULT ((0)) NOT NULL,
    [Name]                VARCHAR (255) NULL,
    [ReconProcessID]      INT           NOT NULL,
    [SourceFileSectionID] INT           NOT NULL,
    [TargetFileSectionID] INT           NOT NULL,
    [ReconTypeID]         INT           NOT NULL,
    [sys_CreatedBy]       VARCHAR (255) CONSTRAINT [DF_ReconProcessStep_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]       DATETIME      CONSTRAINT [DF_ReconProcessStep_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]      VARCHAR (255) CONSTRAINT [DF_ReconProcessStep_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]      DATETIME      CONSTRAINT [DF_ReconProcessStep_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ReconProcessStep] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ReconProcessStep_FileSection] FOREIGN KEY ([SourceFileSectionID]) REFERENCES [Import].[FileSection] ([ID]),
    CONSTRAINT [FK_ReconProcessStep_FileSection1] FOREIGN KEY ([TargetFileSectionID]) REFERENCES [Import].[FileSection] ([ID]),
    CONSTRAINT [FK_ReconProcessStep_ReconProcess] FOREIGN KEY ([ReconProcessID]) REFERENCES [Admin].[ReconProcess] ([ID]),
    CONSTRAINT [FK_ReconProcessStep_ReconType] FOREIGN KEY ([ReconTypeID]) REFERENCES [Admin].[ReconType] ([ID]),
    CONSTRAINT [UQ_ReconProcessStep_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);


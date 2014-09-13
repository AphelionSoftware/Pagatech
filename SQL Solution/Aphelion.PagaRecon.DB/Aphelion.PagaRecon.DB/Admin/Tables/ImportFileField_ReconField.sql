CREATE TABLE [Admin].[ImportFileField_ReconField] (
    [ID]             INT           NOT NULL,
    [FileFieldID]    INT           NOT NULL,
    [ReconFieldID]   INT           NOT NULL,
    [sys_CreatedBy]  VARCHAR (255) CONSTRAINT [DF_ImportFileField_ReconField_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME      CONSTRAINT [DF_ImportFileField_ReconField_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) CONSTRAINT [DF_ImportFileField_ReconField_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME      CONSTRAINT [DF_ImportFileField_ReconField_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ImportFileField_ReconField] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ImportFileField_ReconField_FileField] FOREIGN KEY ([FileFieldID]) REFERENCES [Import].[FileField] ([ID]),
    CONSTRAINT [FK_ImportFileField_ReconField_ReconField] FOREIGN KEY ([ReconFieldID]) REFERENCES [Admin].[ReconField] ([ID])
);


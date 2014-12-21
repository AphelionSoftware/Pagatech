CREATE TABLE [Admin].[ReconField] (
    [ID]                 INT           IDENTITY (1, 1) NOT NULL,
    [FieldTypeID]        INT           NOT NULL,
    [ReconProcessStepID] INT           NOT NULL,
    [FileFieldID]        INT           NOT NULL,
    [SystemFieldID]      INT           NOT NULL,
    [sys_CreatedBy]      VARCHAR (255) CONSTRAINT [DF_ReconField_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]      DATETIME      CONSTRAINT [DF_ReconField_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]     VARCHAR (255) CONSTRAINT [DF_ReconField_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]     DATETIME      CONSTRAINT [DF_ReconField_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ReconField] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ReconField_FieldType] FOREIGN KEY ([FieldTypeID]) REFERENCES [Admin].[FieldType] ([ID]),
    CONSTRAINT [FK_ReconField_FileField] FOREIGN KEY ([FileFieldID]) REFERENCES [Import].[FileField] ([ID]),
    CONSTRAINT [FK_ReconField_ReconProcessStep] FOREIGN KEY ([ReconProcessStepID]) REFERENCES [Admin].[ReconProcessStep] ([ID]),
    CONSTRAINT [FK_ReconField_SystemField] FOREIGN KEY ([SystemFieldID]) REFERENCES [Admin].[SystemField] ([ID])
);




CREATE TABLE [Recon].[ImportedFile] (
    [ID]               INT           NOT NULL,
    [FileName]         VARCHAR (255) NOT NULL,
    [FileDefinitionID] INT           NOT NULL,
    [ReconSummaryID]   INT           NOT NULL,
    [sys_CreatedBy]    VARCHAR (255) CONSTRAINT [DF_ImportedFile_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]    DATETIME      CONSTRAINT [DF_ImportedFile_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255) CONSTRAINT [DF_ImportedFile_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]   DATETIME      CONSTRAINT [DF_ImportedFile_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ImportedFile] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ImportedFile_FileDefinition] FOREIGN KEY ([FileDefinitionID]) REFERENCES [Import].[FileDefinition] ([ID]),
    CONSTRAINT [FK_ImportedFile_ReconSummary] FOREIGN KEY ([ReconSummaryID]) REFERENCES [Recon].[ReconSummary] ([ID]),
    CONSTRAINT [UQ_ImportedFile_FileName] UNIQUE NONCLUSTERED ([FileName] ASC)
);


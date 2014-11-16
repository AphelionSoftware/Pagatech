CREATE TABLE [Recon].[ImportedFile] (
    [ID]               INT             IDENTITY (1, 1) NOT NULL,
    [FileName]         VARCHAR (800)   NOT NULL,
    [UploadedFileName] VARCHAR (800)   NULL,
    [FileDefinitionID] INT             NOT NULL,
    [FileContents]     VARBINARY (MAX) NULL,
    [sys_CreatedBy]    VARCHAR (255)   CONSTRAINT [DF_ImportedFile_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]    DATETIME        CONSTRAINT [DF_ImportedFile_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255)   CONSTRAINT [DF_ImportedFile_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]   DATETIME        CONSTRAINT [DF_ImportedFile_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ImportedFile] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ImportedFile_FileDefinition] FOREIGN KEY ([FileDefinitionID]) REFERENCES [Import].[FileDefinition] ([ID])
);






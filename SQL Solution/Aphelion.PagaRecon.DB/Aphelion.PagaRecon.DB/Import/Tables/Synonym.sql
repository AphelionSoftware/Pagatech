CREATE TABLE [Import].[Synonym] (
    [ID]             INT           IDENTITY (1, 1) NOT NULL,
    [SourceValue]    VARCHAR (255) NOT NULL,
    [SynonymValue]   VARCHAR (255) NOT NULL,
    [FileSectionID]  INT           NOT NULL,
    [sys_CreatedBy]  VARCHAR (255) CONSTRAINT [DF_Synonym_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME      CONSTRAINT [DF_Synonym_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) CONSTRAINT [DF_Synonym_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME      CONSTRAINT [DF_Synonym_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Synonym] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Synonym_FileSection] FOREIGN KEY ([FileSectionID]) REFERENCES [Import].[FileSection] ([ID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Synonym_1]
    ON [Import].[Synonym]([FileSectionID] ASC, [SourceValue] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Synonym]
    ON [Import].[Synonym]([FileSectionID] ASC, [SynonymValue] ASC);


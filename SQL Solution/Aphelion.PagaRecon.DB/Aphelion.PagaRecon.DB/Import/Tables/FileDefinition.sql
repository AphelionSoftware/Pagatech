CREATE TABLE [Import].[FileDefinition] (
    [ID]             INT           IDENTITY (1, 1) NOT NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [Name]           VARCHAR (255) NULL,
    [FileTypeID]     INT           NOT NULL,
    [sys_CreatedBy]  VARCHAR (255) CONSTRAINT [DF_FileDefinition_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME      CONSTRAINT [DF_FileDefinition_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) CONSTRAINT [DF_FileDefinition_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME      CONSTRAINT [DF_FileDefinition_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FileDefinition] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_FileDefinition_FileType] FOREIGN KEY ([FileTypeID]) REFERENCES [Import].[FileType] ([ID]),
    CONSTRAINT [UQ_FileDefinition_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);




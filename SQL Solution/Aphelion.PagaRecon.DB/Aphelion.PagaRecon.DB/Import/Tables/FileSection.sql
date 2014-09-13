CREATE TABLE [Import].[FileSection] (
    [ID]               INT           NOT NULL,
    [Code]             VARCHAR (50)  NOT NULL,
    [Name]             VARCHAR (255) NULL,
    [FileDefinitionID] INT           NOT NULL,
    [StartRowID]       INT           DEFAULT ((0)) NOT NULL,
    [StartColumnID]    INT           DEFAULT ((0)) NOT NULL,
    [EndRowID]         INT           NULL,
    [EndColumnID]      INT           NULL,
    [sys_CreatedBy]    VARCHAR (255) CONSTRAINT [DF_FileSection_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]    DATETIME      CONSTRAINT [DF_FileSection_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255) CONSTRAINT [DF_FileSection_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]   DATETIME      CONSTRAINT [DF_FileSection_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FileSection] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_FileSection_FileDefinition] FOREIGN KEY ([FileDefinitionID]) REFERENCES [Import].[FileDefinition] ([ID]),
    CONSTRAINT [UQ_FileSection_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);


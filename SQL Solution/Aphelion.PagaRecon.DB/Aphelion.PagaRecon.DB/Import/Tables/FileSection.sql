CREATE TABLE [Import].[FileSection] (
    [ID]                 INT           IDENTITY (1, 1) NOT NULL,
    [Code]               VARCHAR (50)  NOT NULL,
    [Name]               VARCHAR (255) NULL,
    [StagingTableSchema] VARCHAR (255) NOT NULL,
    [StagingTableName]   VARCHAR (255) NOT NULL,
    [FileDefinitionID]   INT           NOT NULL,
    [StartRow]           INT           CONSTRAINT [DF__FileSecti__Start__693CA210] DEFAULT ((0)) NOT NULL,
    [StartColumn]        INT           CONSTRAINT [DF__FileSecti__Start__6A30C649] DEFAULT ((0)) NOT NULL,
    [NumRows]            INT           NULL,
    [NumColumns]         INT           NULL,
    [Pivot]              BIT           CONSTRAINT [DF_FileSection_Pivot] DEFAULT ((0)) NOT NULL,
    [HeaderRow]          BIT           CONSTRAINT [DF_FileSection_HeaderRow] DEFAULT ((1)) NOT NULL,
    [sys_CreatedBy]      VARCHAR (255) CONSTRAINT [DF_FileSection_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]      DATETIME      CONSTRAINT [DF_FileSection_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]     VARCHAR (255) CONSTRAINT [DF_FileSection_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]     DATETIME      CONSTRAINT [DF_FileSection_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FileSection] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_FileSection_FileDefinition] FOREIGN KEY ([FileDefinitionID]) REFERENCES [Import].[FileDefinition] ([ID]),
    CONSTRAINT [UQ_FileSection_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);






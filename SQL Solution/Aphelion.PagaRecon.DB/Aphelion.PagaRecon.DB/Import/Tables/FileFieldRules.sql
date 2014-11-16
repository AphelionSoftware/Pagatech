CREATE TABLE [Import].[FileFieldRules] (
    [ID]             INT           IDENTITY (1, 1) NOT NULL,
    [FileFieldID]    INT           NOT NULL,
    [RuleTypeID]     INT           NOT NULL,
    [ProcessingRule] VARCHAR (MAX) NULL,
    [StartPos]       INT           NULL,
    [EndPos]         INT           NULL,
    [FirstChar]      NCHAR (1)     NULL,
    [LastChar]       NCHAR (1)     NULL,
    [FirstPattern]   NVARCHAR (50) NULL,
    [LastPattern]    NVARCHAR (50) NULL,
    [SplitChar]      NCHAR (1)     NULL,
    [ArrPos]         INT           NULL,
    [sys_CreatedBy]  VARCHAR (255) CONSTRAINT [DF_FileFieldRules_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME      CONSTRAINT [DF_FileFieldRules_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) CONSTRAINT [DF_FileFieldRules_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME      CONSTRAINT [DF_FileFieldRules_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FileFieldRules] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_FileFieldRules_FileSection] FOREIGN KEY ([FileFieldID]) REFERENCES [Import].[FileField] ([ID]),
    CONSTRAINT [FK_FileFieldRules_RuleType] FOREIGN KEY ([RuleTypeID]) REFERENCES [Admin].[RuleType] ([ID])
);


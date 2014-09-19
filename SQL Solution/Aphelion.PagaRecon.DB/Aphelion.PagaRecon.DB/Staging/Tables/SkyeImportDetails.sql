CREATE TABLE [Staging].[SkyeImportDetails] (
    [ID]                     INT           IDENTITY (1, 1) NOT NULL,
    [TransactionDate]        VARCHAR (255) NULL,
    [ValueDate]              VARCHAR (255) NULL,
    [TransactionReferenceNo] VARCHAR (255) NULL,
    [Description]            VARCHAR (255) NULL,
    [Debit]                  VARCHAR (255) NULL,
    [Credit]                 VARCHAR (255) NULL,
    [Balance]                VARCHAR (255) NULL,
    [sys_CreatedBy]          VARCHAR (255) CONSTRAINT [DF_SkyeImportDetails_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]          DATETIME      CONSTRAINT [DF_SkyeImportDetails_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]         VARCHAR (255) CONSTRAINT [DF_SkyeImportDetails_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]         DATETIME      CONSTRAINT [DF_SkyeImportDetails_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FileDefinition] PRIMARY KEY CLUSTERED ([ID] ASC)
);




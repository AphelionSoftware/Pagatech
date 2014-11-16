CREATE TABLE [Staging].[NIBBS_DB_Detail] (
    [ID]             INT            IDENTITY (1, 1) NOT NULL,
    [Narration]      VARCHAR (1000) NOT NULL,
    [Posting_Date]   VARCHAR (1000) NOT NULL,
    [Value_Date]     VARCHAR (1000) NOT NULL,
    [Debit]          VARCHAR (1000) NOT NULL,
    [Credit]         VARCHAR (1000) NOT NULL,
    [Reference]      VARCHAR (1000) NOT NULL,
    [Balance]        VARCHAR (1000) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255)  CONSTRAINT [DF_NIBBS_DB_Detail_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME       CONSTRAINT [DF_NIBBS_DB_Detail_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255)  CONSTRAINT [DF_NIBBS_DB_Detail_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME       CONSTRAINT [DF_NIBBS_DB_Detail_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_NIBBS_DB_Detail] PRIMARY KEY CLUSTERED ([ID] ASC)
);


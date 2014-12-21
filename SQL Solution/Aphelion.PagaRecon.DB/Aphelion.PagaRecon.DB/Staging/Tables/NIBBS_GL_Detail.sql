CREATE TABLE [Staging].[NIBBS_GL_Detail] (
    [ID]                  INT           IDENTITY (1, 1) NOT NULL,
    [ImportedFileID]      INT           NULL,
    [IntegrationTxDateID] INT           NOT NULL,
    [IntegrationTxID]     INT           NOT NULL,
    [GL_FinancialTxID]    INT           NOT NULL,
    [IntRefNo]            VARCHAR (300) NULL,
    [LineItemTxAmount]    VARCHAR (300) NULL,
    [sys_CreatedBy]       VARCHAR (255) CONSTRAINT [DF_NIBBS_GL_Detail_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]       DATETIME      CONSTRAINT [DF_NIBBS_GL_Detail_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]      VARCHAR (255) CONSTRAINT [DF_NIBBS_GL_Detail_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]      DATETIME      CONSTRAINT [DF_NIBBS_GL_Detail_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL
);






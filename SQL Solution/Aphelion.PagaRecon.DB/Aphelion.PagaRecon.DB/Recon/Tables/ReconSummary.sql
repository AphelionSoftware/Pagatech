CREATE TABLE [Recon].[ReconSummary] (
    [ID]             INT             NOT NULL,
    [ReconProcessID] INT             NOT NULL,
    [ReconStart]     DATETIME        NOT NULL,
    [ReconEnd]       DATETIME        NULL,
    [ReconStatusID]  INT             NOT NULL,
    [SourceCount]    INT             NULL,
    [DestCount]      INT             NULL,
    [SourceTotal]    DECIMAL (20, 2) NULL,
    [DestTotal]      DECIMAL (20, 2) NULL,
    [sys_CreatedBy]  VARCHAR (255)   CONSTRAINT [DF_ReconSummary_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME        CONSTRAINT [DF_ReconSummary_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255)   CONSTRAINT [DF_ReconSummary_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME        CONSTRAINT [DF_ReconSummary_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ReconSummary] PRIMARY KEY CLUSTERED ([ID] ASC)
);


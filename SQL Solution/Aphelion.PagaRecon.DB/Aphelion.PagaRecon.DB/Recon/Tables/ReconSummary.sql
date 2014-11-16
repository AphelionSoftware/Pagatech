CREATE TABLE [Recon].[ReconSummary] (
    [ID]                 INT             IDENTITY (1, 1) NOT NULL,
    [ReconProcessStepID] INT             NOT NULL,
    [ReconStart]         DATETIME        NOT NULL,
    [ReconEnd]           DATETIME        NULL,
    [ReconStatusID]      INT             NOT NULL,
    [SourceCount]        INT             NULL,
    [DestCount]          INT             NULL,
    [SourceTotal]        DECIMAL (20, 2) NULL,
    [DestTotal]          DECIMAL (20, 2) NULL,
    [ReconDate]          DATE            CONSTRAINT [DF_ReconSummary_ReconDate] DEFAULT (getdate()) NOT NULL,
    [SourceImportFileID] INT             NULL,
    [DestImportFileID]   INT             NULL,
    [sys_CreatedBy]      VARCHAR (255)   CONSTRAINT [DF_ReconSummary_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]      DATETIME        CONSTRAINT [DF_ReconSummary_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]     VARCHAR (255)   CONSTRAINT [DF_ReconSummary_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]     DATETIME        CONSTRAINT [DF_ReconSummary_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ReconSummary] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ReconSummary_ImportedFile] FOREIGN KEY ([SourceImportFileID]) REFERENCES [Recon].[ImportedFile] ([ID]),
    CONSTRAINT [FK_ReconSummary_ImportedFile1] FOREIGN KEY ([DestImportFileID]) REFERENCES [Recon].[ImportedFile] ([ID]),
    CONSTRAINT [FK_ReconSummary_ReconProcessStep] FOREIGN KEY ([ReconProcessStepID]) REFERENCES [Admin].[ReconProcessStep] ([ID]),
    CONSTRAINT [FK_ReconSummary_ReconStatus] FOREIGN KEY ([ReconStatusID]) REFERENCES [Admin].[ReconStatus] ([ID])
);








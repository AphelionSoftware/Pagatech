CREATE TABLE [Recon].[ReconDetail] (
    [ID]                   INT             NOT NULL,
    [ReconSummaryID]       INT             NOT NULL,
    [ReconItemStatusID]    INT             NOT NULL,
    [Value]                DECIMAL (20, 2) NOT NULL,
    [SourceKey]            NVARCHAR (4000) NOT NULL,
    [MatchedReconDetailID] INT             NULL,
    [FileDetailID]         INT             NOT NULL,
    [sys_CreatedBy]        VARCHAR (255)   CONSTRAINT [DF_ReconDetail_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]        DATETIME        CONSTRAINT [DF_ReconDetail_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]       VARCHAR (255)   CONSTRAINT [DF_ReconDetail_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]       DATETIME        CONSTRAINT [DF_ReconDetail_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ReconDetail] PRIMARY KEY CLUSTERED ([ID] ASC)
);


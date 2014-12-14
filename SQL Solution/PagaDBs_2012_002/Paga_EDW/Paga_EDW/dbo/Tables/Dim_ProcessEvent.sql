CREATE TABLE [dbo].[Dim_ProcessEvent] (
    [DimProcessEventID]           INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                   INT           NOT NULL,
    [Name]                        VARCHAR (255) NULL,
    [DimProcessTypeID]            INT           NULL,
    [DimUserID]                   INT           NULL,
    [DimForUserID]                INT           NULL,
    [DimToUserID]                 INT           NULL,
    [DimInitiatingUserID]         INT           NULL,
    [DimProcessChannelID]         INT           NOT NULL,
    [DimOriginalProcessChannelID] INT           NULL,
    [DimProcessStatusID]          INT           NULL,
    [HasFinancialTransaction]     BIT           NULL,
    [DimCompletedDateID]          INT           NULL,
    [DimCompletedTimeID]          INT           NULL,
    [SourceKeyHash]               BIGINT        NULL,
    [DeltaHash]                   BIGINT        NULL,
    [sys_CreatedBy]               VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]               DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]              VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]              DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimProcessEvent] PRIMARY KEY CLUSTERED ([DimProcessEventID] ASC),
    CONSTRAINT [fk_DimProcessEvent_DimCompletedDateID] FOREIGN KEY ([DimCompletedDateID]) REFERENCES [dbo].[Dim_Date] ([DimDateID]),
    CONSTRAINT [fk_DimProcessEvent_DimCompletedTimeID] FOREIGN KEY ([DimCompletedTimeID]) REFERENCES [dbo].[Dim_Time] ([DimTimeID]),
    CONSTRAINT [fk_DimProcessEvent_DimForUserID] FOREIGN KEY ([DimForUserID]) REFERENCES [dbo].[Dim_User] ([DimUserID]),
    CONSTRAINT [fk_DimProcessEvent_DimInitiatingUserID] FOREIGN KEY ([DimInitiatingUserID]) REFERENCES [dbo].[Dim_User] ([DimUserID]),
    CONSTRAINT [fk_DimProcessEvent_DimOriginalProcessChannel] FOREIGN KEY ([DimOriginalProcessChannelID]) REFERENCES [dbo].[Dim_ProcessChannel] ([DimProcessChannelID]),
    CONSTRAINT [fk_DimProcessEvent_DimProcessChannel] FOREIGN KEY ([DimProcessChannelID]) REFERENCES [dbo].[Dim_ProcessChannel] ([DimProcessChannelID]),
    CONSTRAINT [fk_DimProcessEvent_DimProcessStatus] FOREIGN KEY ([DimProcessStatusID]) REFERENCES [dbo].[Dim_ProcessStatus] ([DimProcessStatusID]),
    CONSTRAINT [fk_DimProcessEvent_DimProcessTypeID] FOREIGN KEY ([DimProcessTypeID]) REFERENCES [dbo].[Dim_ProcessType] ([DimProcessTypeID]),
    CONSTRAINT [fk_DimProcessEvent_DimToUserID] FOREIGN KEY ([DimToUserID]) REFERENCES [dbo].[Dim_User] ([DimUserID]),
    CONSTRAINT [fk_DimProcessEvent_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [dbo].[Dim_User] ([DimUserID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimProcessEvent_SourceKey]
    ON [dbo].[Dim_ProcessEvent]([SourceKey] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20141211-173732]
    ON [dbo].[Dim_ProcessEvent]([DimProcessEventID] ASC) WHERE ([HasFinancialTransaction]=(1));


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Dim_ProcessEvent';


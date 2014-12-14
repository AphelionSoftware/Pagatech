CREATE TABLE [dbo].[Dim_ProcessEvent] (
    [SourceKey]                        INT          NOT NULL,
    [ProcessType_SourceKey]            VARCHAR (50) NULL,
    [User_SourceKey]                   INT          NULL,
    [ForUser_SourceKey]                INT          NULL,
    [ToUser_SourceKey]                 INT          NULL,
    [InitiatorUser_SourceKey]          INT          NULL,
    [ProcessChannel_SourceKey]         VARCHAR (8)  NOT NULL,
    [OriginalProcessChannel_SourceKey] VARCHAR (50) NULL,
    [ProcessStatus_SourceKey]          VARCHAR (50) NULL,
    [HasFinancialTransaction]          BIT          NULL,
    [FinancialTx_SourceKey]            INT          NULL,
    [DimCompletedDateID]               INT          NULL,
    [DimCompletedTimeID]               INT          NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimProcessEvent_SourceKey]
    ON [dbo].[Dim_ProcessEvent]([SourceKey] ASC);


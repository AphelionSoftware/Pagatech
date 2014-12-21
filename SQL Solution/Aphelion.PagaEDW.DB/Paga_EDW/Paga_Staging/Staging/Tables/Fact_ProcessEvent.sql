CREATE TABLE [Staging].[Fact_ProcessEvent] (
    [DeltaHash]                   BIGINT          NULL,
    [DimCompletedDateID]          INT             NULL,
    [DimCompletedTimeID]          INT             NULL,
    [DimForUserID]                INT             NULL,
    [DimInitiatingUserID]         INT             NULL,
    [DimOriginalProcessChannelID] INT             NULL,
    [DimProcessChannelID]         INT             NOT NULL,
    [DimProcessStatusID]          INT             NULL,
    [DimProcessTypeID]            INT             NULL,
    [DimToUserID]                 INT             NULL,
    [DimUserID]                   INT             NULL,
    [FactProcessEventID]          INT             NULL,
    [HasFinancialTransaction]     BIT             NULL,
    [Name]                        VARCHAR (255)   NULL,
    [ProcessAmount]               DECIMAL (18, 2) NULL,
    [ProcessFee]                  DECIMAL (18, 2) NULL,
    [SourceKey]                   INT             NOT NULL,
    [SourceKeyHash]               BIGINT          NULL
);


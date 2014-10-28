CREATE TABLE [Activity].[FactUserMonthlySnapshot] (
    [FactUserMonthlySnapshotID] INT             IDENTITY (1, 1) NOT NULL,
    [DimCreatedDateID]          INT             NULL,
    [DimPagaAccountID]          INT             NULL,
    [DimProcessTypeID]          INT             NULL,
    [DimChannelID]              INT             NULL,
    [DimAsOfDateID]             INT             NULL,
    [DimOrganizationID]         INT             NULL,
    [DimCityID]                 INT             NULL,
    [ProcessFee]                DECIMAL (18, 2) NULL,
    [ProcessAmount]             DECIMAL (18, 2) NULL,
    [AgentCommissionAmount]     DECIMAL (18, 2) NULL,
    [ForMeByMe_SentTxCount]     DECIMAL (18, 2) NULL,
    [ForMeByOther_SentTxCount]  DECIMAL (18, 2) NULL,
    [ByMeForOther_SentTxCount]  DECIMAL (18, 2) NULL,
    [ReceivedTxCount]           DECIMAL (18, 2) NULL,
    CONSTRAINT [pk_FactUserMonthlySnapshotID] PRIMARY KEY CLUSTERED ([FactUserMonthlySnapshotID] ASC),
    CONSTRAINT [fk_FactUserMonthlySnapshot_DimAsOfDateID] FOREIGN KEY ([DimAsOfDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactUserMonthlySnapshot_DimChannelID] FOREIGN KEY ([DimChannelID]) REFERENCES [Activity].[DimChannel] ([DimChannelID]),
    CONSTRAINT [fk_FactUserMonthlySnapshot_DimCityID] FOREIGN KEY ([DimCityID]) REFERENCES [Location].[DimCity] ([DimCityID]),
    CONSTRAINT [fk_FactUserMonthlySnapshot_DimCreatedDateID] FOREIGN KEY ([DimCreatedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactUserMonthlySnapshot_DimOrganizationID] FOREIGN KEY ([DimOrganizationID]) REFERENCES [Shared].[DimOrganization] ([DimOrganizationID]),
    CONSTRAINT [fk_FactUserMonthlySnapshot_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID]),
    CONSTRAINT [fk_FactUserMonthlySnapshot_DimProcessTypeID] FOREIGN KEY ([DimProcessTypeID]) REFERENCES [Classification].[DimProcessType] ([DimProcessTypeID])
);








GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot';


GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'5', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2900', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot';


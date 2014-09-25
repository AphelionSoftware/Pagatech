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
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimAsOfDateID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ProcessFee', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ProcessAmount', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AgentCommissionAmount', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ForMeByMe_SentTxCount', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ForMeByMe_SentTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ForMeByOther_SentTxCount', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ForMeByOther_SentTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ByMeForOther_SentTxCount', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ByMeForOther_SentTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReceivedTxCount', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ReceivedTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'5', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2900', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactUserMonthlySnapshot';


CREATE TABLE [Staging].[Activity_FactUserMonthlySnapshot] (
    [DimCreatedDateID]         INT             NULL,
    [PagaAccountSourceKey]     INT             NULL,
    [ProcessTypeSourceKey]     INT             NULL,
    [ChannelSourceKey]         INT             NULL,
    [DimAsOfDateID]            INT             NULL,
    [OrganizationSourceKey]    INT             NULL,
    [CitySourceKey]            INT             NULL,
    [ProcessFee]               DECIMAL (18, 2) NULL,
    [ProcessAmount]            DECIMAL (18, 2) NULL,
    [AgentCommissionAmount]    DECIMAL (18, 2) NULL,
    [ForMeByMe_SentTxCount]    DECIMAL (18, 2) NULL,
    [ForMeByOther_SentTxCount] DECIMAL (18, 2) NULL,
    [ByMeForOther_SentTxCount] DECIMAL (18, 2) NULL,
    [ReceivedTxCount]          DECIMAL (18, 2) NULL
);




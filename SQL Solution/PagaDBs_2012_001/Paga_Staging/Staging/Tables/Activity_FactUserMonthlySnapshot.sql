CREATE TABLE [Staging].[Activity_FactUserMonthlySnapshot] (
    [AgentCommissionAmount]    DECIMAL (18, 2) NULL,
    [ByMeForOther_SentTxCount] DECIMAL (18, 2) NULL,
    [ForMeByMe_SentTxCount]    DECIMAL (18, 2) NULL,
    [ForMeByOther_SentTxCount] DECIMAL (18, 2) NULL,
    [ProcessAmount]            DECIMAL (18, 2) NULL,
    [ProcessFee]               DECIMAL (18, 2) NULL,
    [ReceivedTxCount]          DECIMAL (18, 2) NULL,
    [DimAsOfDateID]            INT             NULL,
    [DimCreatedDateID]         INT             NULL,
    [DimChannelSourceKey]      VARCHAR (255)   NULL,
    [DimCitySourceKey]         VARCHAR (255)   NULL,
    [DimOrganizationSourceKey] VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]  VARCHAR (255)   NULL,
    [DimProcessTypeSourceKey]  VARCHAR (255)   NULL,
    [change_operation]         CHAR (1)        DEFAULT ((1)) NOT NULL
);








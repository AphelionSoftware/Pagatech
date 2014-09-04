CREATE TABLE [Staging].[Activity_FactUserMonthlySnapshot] (
    [DimCreatedDateID]         INT             NULL,
    [PagaAccountSourceKey]     VARCHAR (255)   NULL,
    [ProcessTypeSourceKey]     VARCHAR (255)   NULL,
    [ChannelSourceKey]         VARCHAR (255)   NULL,
    [DimAsOfDateID]            INT             NULL,
    [OrganizationSourceKey]    VARCHAR (255)   NULL,
    [CitySourceKey]            VARCHAR (255)   NULL,
    [ProcessFee]               DECIMAL (18, 2) NULL,
    [ProcessAmount]            DECIMAL (18, 2) NULL,
    [AgentCommissionAmount]    DECIMAL (18, 2) NULL,
    [ForMeByMe_SentTxCount]    DECIMAL (18, 2) NULL,
    [ForMeByOther_SentTxCount] DECIMAL (18, 2) NULL,
    [ByMeForOther_SentTxCount] DECIMAL (18, 2) NULL,
    [ReceivedTxCount]          DECIMAL (18, 2) NULL,
    [change_operation]         CHAR (1)        NULL
);






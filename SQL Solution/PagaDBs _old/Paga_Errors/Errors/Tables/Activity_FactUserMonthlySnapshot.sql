CREATE TABLE [Errors].[Activity_FactUserMonthlySnapshot] (
    [QueueID]                  INT             NOT NULL,
    [SSISErrorCode]            INT             NOT NULL,
    [SSISErrorColumn]          INT             NOT NULL,
    [PackageName]              VARCHAR (255)   NOT NULL,
    [ErrorType]                VARCHAR (255)   NOT NULL,
    [AgentCommissionAmount]    DECIMAL (18, 2) NULL,
    [ByMeForOther_SentTxCount] DECIMAL (18, 2) NULL,
    [ChannelSourceKey]         INT             NULL,
    [CitySourceKey]            INT             NULL,
    [DimAsOfDateID]            INT             NULL,
    [ForMeByMe_SentTxCount]    DECIMAL (18, 2) NULL,
    [ForMeByOther_SentTxCount] DECIMAL (18, 2) NULL,
    [OrganizationSourceKey]    INT             NULL,
    [PagaAccountSourceKey]     INT             NULL,
    [ProcessAmount]            DECIMAL (18, 2) NULL,
    [ProcessFee]               DECIMAL (18, 2) NULL,
    [ProcessTypeSourceKey]     INT             NULL,
    [ReceivedTxCount]          DECIMAL (18, 2) NULL
);


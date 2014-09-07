CREATE TABLE [Errors].[Activity_FactUserMonthlySnapshot] (
    [QueueID]                  INT             NOT NULL,
    [SSISErrorCode]            INT             NOT NULL,
    [SSISErrorColumn]          INT             NOT NULL,
    [PackageName]              VARCHAR (255)   NOT NULL,
    [ErrorType]                VARCHAR (255)   NOT NULL,
    [AgentCommissionAmount]    DECIMAL (18, 2) NULL,
    [ByMeForOther_SentTxCount] DECIMAL (18, 2) NULL,
    [change_operation]         CHAR (1)        NOT NULL,
    [DimAsOfDateID]            INT             NULL,
    [DimChannelSourceKey]      VARCHAR (255)   NULL,
    [DimCitySourceKey]         VARCHAR (255)   NULL,
    [DimCreatedDateID]         INT             NULL,
    [DimOrganizationSourceKey] VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]  VARCHAR (255)   NULL,
    [DimProcessTypeSourceKey]  VARCHAR (255)   NULL,
    [ForMeByMe_SentTxCount]    DECIMAL (18, 2) NULL,
    [ForMeByOther_SentTxCount] DECIMAL (18, 2) NULL,
    [ProcessAmount]            DECIMAL (18, 2) NULL,
    [ProcessFee]               DECIMAL (18, 2) NULL,
    [ReceivedTxCount]          DECIMAL (18, 2) NULL
);




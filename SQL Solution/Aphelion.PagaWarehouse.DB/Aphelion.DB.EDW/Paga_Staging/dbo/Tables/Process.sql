CREATE TABLE [dbo].[Process] (
    [ProcessId]               INT             NOT NULL,
    [Amount]                  DECIMAL (18, 2) NULL,
    [CompletedTimestamp]      DATETIME        NULL,
    [CreatedDate]             DATETIME        NULL,
    [Fee]                     DECIMAL (18, 2) NULL,
    [FinancialTransactionId]  INT             NULL,
    [ForUserId]               INT             NULL,
    [IsShortLived]            BIT             NULL,
    [ProcessChannelId]        VARCHAR (50)    NULL,
    [ProcessCode]             VARCHAR (36)    NULL,
    [ProcessStatusId]         VARCHAR (50)    NULL,
    [ProcessTypeId]           VARCHAR (50)    NULL,
    [StartedTimestamp]        DATETIME        NULL,
    [ToUserId]                INT             NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UserId]                  INT             NULL,
    [AgentCommissionAmount]   DECIMAL (18, 2) NULL,
    [AgentCommissionTypeId]   VARCHAR (50)    NULL,
    [StatusMessage]           NVARCHAR (1000) NULL,
    [HasFinancialTransaction] BIT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Process_ProcessId] PRIMARY KEY CLUSTERED ([ProcessId] ASC)
);


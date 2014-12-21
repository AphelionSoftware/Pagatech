CREATE TABLE [dbo].[Queue] (
    [QueueID]          INT             IDENTITY (1, 1) NOT NULL,
    [SchedulerID]      BIGINT          NULL,
    [QueueLoadTypeID]  INT             NOT NULL,
    [StatusID]         INT             NOT NULL,
    [StatusMessage]    NVARCHAR (4000) NULL,
    [PackageLoadID]    INT             NULL,
    [IsBatch]          BIT             DEFAULT ((0)) NOT NULL,
    [IsBatchComplete]  BIT             DEFAULT ((0)) NOT NULL,
    [StartTime]        DATETIME        NULL,
    [EndTime]          DATETIME        NULL,
    [RunBalancing]     BIT             DEFAULT ((0)) NOT NULL,
    [RunSchemaCompare] BIT             DEFAULT ((0)) NOT NULL,
    [RunFKChecks]      BIT             DEFAULT ((0)) NOT NULL,
    [sys_CreatedOn]    DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]    NVARCHAR (255)  DEFAULT ('Unknown') NOT NULL,
    [sys_ModifiedOn]   DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]   NVARCHAR (255)  DEFAULT ('Unknown') NOT NULL,
    PRIMARY KEY CLUSTERED ([QueueID] ASC),
    CONSTRAINT [FK_Queue_PackageLoad] FOREIGN KEY ([PackageLoadID]) REFERENCES [dbo].[PackageLoad] ([PackageLoadID]),
    CONSTRAINT [FK_Queue_QueueLoadType] FOREIGN KEY ([QueueLoadTypeID]) REFERENCES [dbo].[QueueLoadType] ([QueueLoadTypeID]),
    CONSTRAINT [FK_Queue_Status] FOREIGN KEY ([StatusID]) REFERENCES [dbo].[Status] ([StatusID])
);


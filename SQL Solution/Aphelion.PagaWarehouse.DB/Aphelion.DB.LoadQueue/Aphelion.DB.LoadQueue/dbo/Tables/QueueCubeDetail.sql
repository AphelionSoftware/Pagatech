CREATE TABLE [dbo].[QueueCubeDetail] (
    [QueueCubeDetailID]   INT            IDENTITY (1, 1) NOT NULL,
    [QueueID]             INT            NOT NULL,
    [StatusID]            INT            NOT NULL,
    [CubeTableID]         INT            NULL,
    [StartPartitionValue] INT            NULL,
    [EndPartitionValue]   INT            NULL,
    [StartTime]           DATETIME       NULL,
    [EndTime]             DATETIME       NULL,
    [sys_CreatedOn]       DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]       NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    [sys_ModifiedOn]      DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]      NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    PRIMARY KEY CLUSTERED ([QueueCubeDetailID] ASC),
    CONSTRAINT [FK_QueueCubeDetail_CubeTable] FOREIGN KEY ([CubeTableID]) REFERENCES [dbo].[CubeTable] ([CubeTableID]),
    CONSTRAINT [FK_QueueCubeDetail_Queue] FOREIGN KEY ([QueueID]) REFERENCES [dbo].[Queue] ([QueueID]),
    CONSTRAINT [FK_QueueCubeDetail_Status] FOREIGN KEY ([StatusID]) REFERENCES [dbo].[Status] ([StatusID])
);


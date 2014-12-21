CREATE TABLE [dbo].[QueueLoadType] (
    [QueueLoadTypeID]          INT            IDENTITY (1, 1) NOT NULL,
    [QueueLoadTypeName]        VARCHAR (100)  NOT NULL,
    [QueueLoadTypeDescription] VARCHAR (500)  NULL,
    [sys_CreatedOn]            DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]            NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    [sys_ModifiedOn]           DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]           NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    PRIMARY KEY CLUSTERED ([QueueLoadTypeID] ASC)
);


﻿CREATE TABLE [dbo].[Application] (
    [ApplicationID]          INT            IDENTITY (1, 1) NOT NULL,
    [ApplicationName]        VARCHAR (255)  NOT NULL,
    [ApplicationDescription] VARCHAR (500)  NULL,
    [DatabaseServer]         VARCHAR (255)  NOT NULL,
    [DatabaseName]           VARCHAR (255)  NOT NULL,
    [CubeServer]             VARCHAR (255)  NULL,
    [CubeName]               VARCHAR (255)  NULL,
    [LogServer]              VARCHAR (255)  NULL,
    [LogDatabaseName]        VARCHAR (255)  NULL,
    [LogUserName]            VARCHAR (255)  NULL,
    [LogPassword]            VARCHAR (255)  NULL,
    [TargetMachine]          NVARCHAR (500) NULL,
    [AdminEmail]             VARCHAR (255)  NULL,
    [sys_CreatedOn]          DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]          NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    [sys_ModifiedOn]         DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]         NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED ([ApplicationID] ASC)
);


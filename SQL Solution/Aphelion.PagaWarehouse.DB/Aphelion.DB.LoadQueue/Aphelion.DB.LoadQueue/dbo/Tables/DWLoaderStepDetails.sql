﻿CREATE TABLE [dbo].[DWLoaderStepDetails] (
    [DWLoaderStepDetailsID]   INT            IDENTITY (1, 1) NOT NULL,
    [PackageLoadStepID]       INT            NOT NULL,
    [DWLoaderStepDetailsName] VARCHAR (255)  NOT NULL,
    [DWLoaderStepDetailsCode] VARCHAR (255)  NOT NULL,
    [Active]                  INT            CONSTRAINT [DF_DimDWLoaderStepDetails_Active] DEFAULT ((1)) NOT NULL,
    [sys_CreatedOn]           DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]           NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    [sys_ModifiedOn]          DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]          NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    CONSTRAINT [PK_DWLoaderStepDetails] PRIMARY KEY CLUSTERED ([DWLoaderStepDetailsID] ASC),
    CONSTRAINT [FK_DWLoaderStepDetails_PackageLoad] FOREIGN KEY ([PackageLoadStepID]) REFERENCES [dbo].[PackageLoadStep] ([PackageLoadStepID])
);


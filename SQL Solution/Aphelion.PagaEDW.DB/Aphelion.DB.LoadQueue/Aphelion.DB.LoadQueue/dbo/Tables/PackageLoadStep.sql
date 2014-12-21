CREATE TABLE [dbo].[PackageLoadStep] (
    [PackageLoadStepID]   INT            IDENTITY (1, 1) NOT NULL,
    [PackageLoadID]       INT            NOT NULL,
    [StepTypeID]          INT            NOT NULL,
    [PackageID]           INT            NOT NULL,
    [PackageLoadStepName] VARCHAR (255)  NOT NULL,
    [PackageLoadStepCode] VARCHAR (255)  NOT NULL,
    [StepOrder]           INT            NOT NULL,
    [ContinueOnFailure]   BIT            DEFAULT ((0)) NOT NULL,
    [Active]              INT            DEFAULT ((1)) NOT NULL,
    [MaxParallel]         INT            NULL,
    [sys_CreatedOn]       DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]       NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    [sys_ModifiedOn]      DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]      NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    CONSTRAINT [PK_PackageLoadStep] PRIMARY KEY CLUSTERED ([PackageLoadStepID] ASC),
    CONSTRAINT [FK_PackageLoadStep_Package] FOREIGN KEY ([PackageID]) REFERENCES [dbo].[Package] ([PackageID]),
    CONSTRAINT [FK_PackageLoadStep_PackageLoad] FOREIGN KEY ([PackageLoadID]) REFERENCES [dbo].[PackageLoad] ([PackageLoadID]),
    CONSTRAINT [FK_PackageLoadStep_StepType] FOREIGN KEY ([StepTypeID]) REFERENCES [dbo].[StepType] ([StepTypeID])
);


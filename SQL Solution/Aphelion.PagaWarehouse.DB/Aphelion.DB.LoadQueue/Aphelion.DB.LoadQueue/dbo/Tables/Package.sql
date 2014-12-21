CREATE TABLE [dbo].[Package] (
    [PackageID]       INT            IDENTITY (1, 1) NOT NULL,
    [ApplicationID]   INT            NOT NULL,
    [PackageName]     VARCHAR (255)  NOT NULL,
    [PackageFullName] VARCHAR (500)  NOT NULL,
    [sys_CreatedOn]   DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]   NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    [sys_ModifiedOn]  DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]  NVARCHAR (255) DEFAULT ('Unknown') NOT NULL,
    CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED ([PackageID] ASC),
    CONSTRAINT [FK_Package_Application] FOREIGN KEY ([ApplicationID]) REFERENCES [dbo].[Application] ([ApplicationID])
);


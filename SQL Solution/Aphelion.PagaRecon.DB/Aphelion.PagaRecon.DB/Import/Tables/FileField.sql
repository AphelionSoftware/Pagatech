CREATE TABLE [Import].[FileField] (
    [ID]             INT           IDENTITY (1, 1) NOT NULL,
    [ColumnName]     VARCHAR (255) NOT NULL,
    [FileSectionID]  INT           NOT NULL,
    [Position]       INT           CONSTRAINT [DF_FileField_Position] DEFAULT ((0)) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255) CONSTRAINT [DF_FileField_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME      CONSTRAINT [DF_FileField_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) CONSTRAINT [DF_FileField_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME      CONSTRAINT [DF_FileField_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FileField] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_FileField_FileSection] FOREIGN KEY ([FileSectionID]) REFERENCES [Import].[FileSection] ([ID])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20140913-190400]
    ON [Import].[FileField]([FileSectionID] ASC, [Position] ASC);


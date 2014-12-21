CREATE TABLE [Admin].[FieldType] (
    [ID]             INT           IDENTITY (1, 1) NOT NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [Name]           VARCHAR (255) NULL,
    [sys_CreatedBy]  VARCHAR (255) CONSTRAINT [DF_FieldType_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME      CONSTRAINT [DF_FieldType_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) CONSTRAINT [DF_FieldType_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME      CONSTRAINT [DF_FieldType_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FieldType] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQ_FieldType_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);




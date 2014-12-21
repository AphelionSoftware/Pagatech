CREATE TABLE [Admin].[SystemField] (
    [ID]             INT           IDENTITY (1, 1) NOT NULL,
    [TableSchema]    VARCHAR (255) NOT NULL,
    [TableName]      VARCHAR (255) NOT NULL,
    [ColumnName]     VARCHAR (255) NOT NULL,
    [FieldTypeID]    INT           NOT NULL,
    [sys_CreatedBy]  VARCHAR (255) CONSTRAINT [DF_SystemField_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME      CONSTRAINT [DF_SystemField_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) CONSTRAINT [DF_SystemField_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME      CONSTRAINT [DF_SystemField_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_SystemField] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SystemField_FieldType] FOREIGN KEY ([FieldTypeID]) REFERENCES [Admin].[FieldType] ([ID]),
    CONSTRAINT [UQ_SystemField_Code] UNIQUE NONCLUSTERED ([TableSchema] ASC, [TableName] ASC, [ColumnName] ASC)
);




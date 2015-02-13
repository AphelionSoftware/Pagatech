CREATE TABLE [Classification].[DimIntegrationTransactionResult] (
    [DimIntegrationTxResultID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NULL,
    [sys_CreatedBy]            VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]            DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]           VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]                 BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_DimIntegrationTxResult] PRIMARY KEY CLUSTERED ([DimIntegrationTxResultID] ASC)
);
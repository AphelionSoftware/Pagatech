CREATE TABLE [Staging].[SkyeImportHeader] (
    [ID]              INT           IDENTITY (1, 1) NOT NULL,
    [CustomerNo]      VARCHAR (255) NULL,
    [AccountNumber]   VARCHAR (255) NULL,
    [AccountCurrency] VARCHAR (255) NULL,
    [OpeningBalance]  VARCHAR (255) NULL,
    [ClosingBalance]  VARCHAR (255) NULL,
    [sys_CreatedBy]   VARCHAR (255) CONSTRAINT [DF_SkyeImportHeader_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]   DATETIME      CONSTRAINT [DF_SkyeImportHeader_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]  VARCHAR (255) CONSTRAINT [DF_SkyeImportHeader_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]  DATETIME      CONSTRAINT [DF_SkyeImportHeader_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_SkyeImportDetails] PRIMARY KEY CLUSTERED ([ID] ASC)
);


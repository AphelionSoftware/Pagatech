CREATE TABLE [dbo].[Dim_FinancialAccountType] (
    [DimFinancialAccountTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                 VARCHAR (255) NOT NULL,
    [Name]                      VARCHAR (255) NOT NULL,
    [SourceKeyHash]             BIGINT        NULL,
    [DeltaHash]                 BIGINT        NULL,
    [sys_CreatedBy]             VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]             DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]            VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]            DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialAccountType] PRIMARY KEY CLUSTERED ([DimFinancialAccountTypeID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccountType_SourceKey]
    ON [dbo].[Dim_FinancialAccountType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Dim_FinancialAccountType';


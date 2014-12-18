CREATE TABLE [Finance].[DimFinancialAccountType] (
    [DimFinancialAccountTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                 VARCHAR (255) NOT NULL,
    [Name]                      VARCHAR (255) NOT NULL,
    [SourceKeyHash]             BIGINT        NULL,
    [DeltaHash]                 BIGINT        NULL,
    [sys_CreatedBy]             VARCHAR (255) NOT NULL,
    [sys_CreatedOn]             DATETIME      NOT NULL,
    [sys_ModifiedBy]            VARCHAR (255) NOT NULL,
    [sys_ModifiedOn]            DATETIME      NOT NULL,
    CONSTRAINT [pk_DimFinancialAccountType] PRIMARY KEY CLUSTERED ([DimFinancialAccountTypeID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccountType_SourceKey]
    ON [Finance].[DimFinancialAccountType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountType';


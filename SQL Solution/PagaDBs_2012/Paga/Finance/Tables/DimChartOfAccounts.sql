CREATE TABLE [Finance].[DimChartOfAccounts] (
    [DimChartOfAccountsID] INT           NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [GLCodeRange]          VARCHAR (255) NULL,
    [SourceKeyHash]        BIGINT        NOT NULL,
    [DeltaHash]            BIGINT        NOT NULL,
    [sys_ModifiedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimGLHeadingID] PRIMARY KEY CLUSTERED ([DimChartOfAccountsID] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimChartOfAccounts_SourceKey]
    ON [Finance].[DimChartofAccounts]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimChartOfAccounts';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimChartOfAccounts';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimChartOfAccounts';


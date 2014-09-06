CREATE TABLE [Finance].[DimChartOfAccounts] (
    [DimChartOfAccountsID]       INT           NOT NULL,
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





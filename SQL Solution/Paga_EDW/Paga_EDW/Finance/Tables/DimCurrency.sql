CREATE TABLE [Finance].[DimCurrency] (
    [DimCurrencyID]  INT           NOT NULL,
    [SourceKey]      VARCHAR (255) NOT NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [SourceKeyHash]  BIGINT        NOT NULL,
    [DeltaHash]      BIGINT        NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimCurrencyID] PRIMARY KEY CLUSTERED ([DimCurrencyID] ASC),
    CONSTRAINT [uc_DimCurrency_SourceKey] UNIQUE NONCLUSTERED ([SourceKey] ASC)
);


CREATE TABLE [Finance].[DimFinancialAccountType] (
    [DimFinancialAccountTypeID] INT            NOT NULL,
    [SourceKey]                 VARCHAR (255)  NOT NULL,
    [Name]                      VARCHAR (255)  NOT NULL,
    [Code]                      VARCHAR (50)   NOT NULL,
    [TextDesciption]            VARCHAR (1000) NULL,
    [DimGLCodeID]               INT            NOT NULL,
    [SourceKeyHash]             BIGINT         NOT NULL,
    [DeltaHash]                 BIGINT         NOT NULL,
    [sys_ModifiedBy]            VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]            DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]             VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]             DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialAccountType] PRIMARY KEY CLUSTERED ([DimFinancialAccountTypeID] ASC),
    CONSTRAINT [FK_DimFinancialAccountType_DimGLCode] FOREIGN KEY ([DimGLCodeID]) REFERENCES [Finance].[DimGLCode] ([DimGLCodeID])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccountType_SourceKey]
    ON [Finance].[DimFinancialAccountType]([SourceKey] ASC);


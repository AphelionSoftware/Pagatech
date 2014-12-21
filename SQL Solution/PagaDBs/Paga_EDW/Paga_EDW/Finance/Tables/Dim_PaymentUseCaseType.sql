CREATE TABLE [Finance].[DimPaymentUseCaseType] (
    [DimPaymentUseCaseTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]               VARCHAR (255) NOT NULL,
    [Name]                    VARCHAR (255) NULL,
    [SourceKeyHash]           BIGINT        NULL,
    [DeltaHash]               BIGINT        NULL,
    [sys_ModifiedBy]          VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]          DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]           VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimPaymentUseCaseTypeID] PRIMARY KEY CLUSTERED ([DimPaymentUseCaseTypeID] ASC)
);


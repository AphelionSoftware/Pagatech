CREATE TABLE [Mapping].[PaymentUseCaseToTxTypeMap] (
    [PaymentUseCaseToTxTypeMapID]  INT           IDENTITY (1, 1) NOT NULL,
    [DimPaymentUseCaseID]          INT           NOT NULL,
    [DimFinancialTxTypeID]         INT           NOT NULL,
    [FinancialTransactionTypeName] VARCHAR (255) NULL,
    [sys_ModifiedBy]               VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]               DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                DATETIME      DEFAULT (getdate()) NOT NULL,
    [SYS_CHANGE_VERSION]           BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]         CHAR (1)      DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimPaymentUseCaseID] PRIMARY KEY CLUSTERED ([PaymentUseCaseToTxTypeMapID] ASC),
    CONSTRAINT [FK_PaymentUseCaseToTxTypeMap_DimFinancialTxTypeID] FOREIGN KEY ([DimFinancialTxTypeID]) REFERENCES [Classification].[DimFinancialTransactionType] ([DimFinancialTxTypeID]),
    CONSTRAINT [FK_PaymentUseCaseToTxTypeMap_DimPaymentUseCaseID] FOREIGN KEY ([DimPaymentUseCaseID]) REFERENCES [Finance].[DimPaymentUseCase] ([DimPaymentUseCaseID])
);












GO



GO



GO



﻿CREATE TABLE [Mapping].[PaymentUseCaseToTxTypeMap] (
    [PaymentUseCaseToTxTypeMapID] INT           IDENTITY (1, 1) NOT NULL,
    [DimPaymentUseCaseID]         INT           NOT NULL,
    [DimFinancialTxTypeID]        INT           NOT NULL,
    [FinancialTxTypeName]         VARCHAR (255) NULL,
    [sys_ModifiedBy]              VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]              DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]               VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]               DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]                    BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_DimPaymentUseCaseID] PRIMARY KEY CLUSTERED ([PaymentUseCaseToTxTypeMapID] ASC),
    CONSTRAINT [FK_PaymentUseCaseToTxTypeMap_DimFinancialTxTypeID] FOREIGN KEY ([DimFinancialTxTypeID]) REFERENCES [Classification].[DimFinancialTransactionType] ([DimFinancialTxTypeID]),
    CONSTRAINT [FK_PaymentUseCaseToTxTypeMap_DimPaymentUseCaseID] FOREIGN KEY ([DimPaymentUseCaseID]) REFERENCES [Finance].[DimPaymentUseCase] ([DimPaymentUseCaseID])
);






GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Mapping', @level1type = N'TABLE', @level1name = N'PaymentUseCaseToTxTypeMap';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Mapping', @level1type = N'TABLE', @level1name = N'PaymentUseCaseToTxTypeMap';


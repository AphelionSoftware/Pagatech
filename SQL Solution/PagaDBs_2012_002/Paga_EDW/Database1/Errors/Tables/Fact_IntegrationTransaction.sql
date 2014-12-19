﻿CREATE TABLE [Errors].[FactIntegrationTransaction] (
    [QueueID]                                  INT             NOT NULL,
    [SSISErrorCode]                            INT             NOT NULL,
    [SSISErrorColumn]                          INT             NOT NULL,
    [PackageName]                              VARCHAR (255)   NOT NULL,
    [ErrorType]                                VARCHAR (255)   NOT NULL,
    [DeltaHash]                                BIGINT          NULL,
    [DimExternalOrganizationSourceKey]         INT             NULL,
    [DimIntegrationTransactionResultSourceKey] VARCHAR (255)   NULL,
    [DimIntegrationTransactionTypeSourceKey]   VARCHAR (255)   NULL,
    [DimIntegrationTxDateID]                   INT             NULL,
    [DimIntegrationTxTimeID]                   INT             NULL,
    [DimProcessTypeSourceKey]                  VARCHAR (255)   NOT NULL,
    [DimUserSourceKey]                         VARCHAR (255)   NULL,
    [ExternalReferenceNumber]                  VARCHAR (50)    NULL,
    [FactFinancialTransactionSourceKey]        INT             NULL,
    [FactIntegrationTxID]                      INT             NULL,
    [HasFinancialTx]                           INT             NOT NULL,
    [IntegrationTx_Amount]                     DECIMAL (18, 2) NULL,
    [Message]                                  VARCHAR (300)   NULL,
    [SourceKey]                                INT             NOT NULL,
    [SourceKeyHash]                            BIGINT          NULL,
    [DimExternalOrganizationID]                INT             NULL,
    [DimIntegrationTxResultID]                 INT             NULL,
    [DimIntegrationTxTypeID]                   INT             NULL,
    [DimProcessTypeID]                         INT             NULL,
    [DimUserID]                                INT             NULL,
    [FactFinancialTxID]                        INT             NULL
);




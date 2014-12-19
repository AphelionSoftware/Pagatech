CREATE TABLE [Staging].[Shared_FactIntegrationTransaction] (
    [DeltaHash]                                BIGINT          NULL,
    [ExternalReferenceNumber]                  VARCHAR (50)    NULL,
    [FactIntegrationTxID]                      INT             NULL,
    [HasFinancialTx]                           INT             NOT NULL,
    [IntegrationTx_Amount]                     DECIMAL (18, 2) NULL,
    [Message]                                  VARCHAR (300)   NULL,
    [SourceKey]                                INT             NOT NULL,
    [SourceKeyHash]                            BIGINT          NULL,
    [DimIntegrationTxDateID]                   INT             NULL,
    [DimIntegrationTxTimeID]                   INT             NULL,
    [DimExternalOrganizationSourceKey]         INT             NULL,
    [DimIntegrationTransactionResultSourceKey] VARCHAR (255)   NULL,
    [DimIntegrationTransactionTypeSourceKey]   VARCHAR (255)   NULL,
    [DimProcessTypeSourceKey]                  VARCHAR (255)   NOT NULL,
    [DimUserSourceKey]                         INT             NULL,
    [FactFinancialTransactionSourceKey]        INT             NULL
);


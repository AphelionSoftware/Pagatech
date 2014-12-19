CREATE TABLE [Staging].[Fact_IntegrationTransaction] (
    [DeltaHash]                                 BIGINT          NULL,
    [ExternalReferenceNumber]                   VARCHAR (50)    NULL,
    [FactIntegrationTxID]                       INT             NULL,
    [HasFinancialTx]                            INT             NOT NULL,
    [IntegrationTx_Amount]                      DECIMAL (18, 2) NULL,
    [Message]                                   VARCHAR (300)   NULL,
    [SourceKey]                                 INT             NOT NULL,
    [SourceKeyHash]                             BIGINT          NULL,
    [DimIntegrationTxDateID]                    INT             NULL,
    [DimIntegrationTxTimeID]                    INT             NULL,
    [Dim_ExternalOrganizationSourceKey]         INT             NULL,
    [Dim_IntegrationTransactionResultSourceKey] VARCHAR (255)   NULL,
    [Dim_IntegrationTransactionTypeSourceKey]   VARCHAR (255)   NULL,
    [Dim_ProcessTypeSourceKey]                  VARCHAR (255)   NOT NULL,
    [Dim_UserSourceKey]                         INT             NULL,
    [Fact_FinancialTransactionSourceKey]        INT             NULL
);


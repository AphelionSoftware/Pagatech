CREATE TABLE [Errors].[Shared_FactIntegrationTransaction] (
    [QueueID]                                  INT             NOT NULL,
    [SSISErrorCode]                            INT             NOT NULL,
    [SSISErrorColumn]                          INT             NOT NULL,
    [PackageName]                              VARCHAR (255)   NOT NULL,
    [ErrorType]                                VARCHAR (255)   NOT NULL,
    [DimExternalOrganizationSourceKey]         INT             NULL,
    [DimIntegrationTransactionResultSourceKey] VARCHAR (255)   NULL,
    [DimIntegrationTransactionTypeSourceKey]   VARCHAR (255)   NULL,
    [DimIntegrationTxDateID]                   INT             NULL,
    [DimIntegrationTxTimeID]                   INT             NULL,
    [DimProcessTypeSourceKey]                  VARCHAR (255)   NOT NULL,
    [DimUserSourceKey]                         INT             NULL,
    [ExternalReferenceNumber]                  VARCHAR (50)    NULL,
    [FactFinancialTransactionSourceKey]        INT             NULL,
    [HasFinancialTx]                           INT             NOT NULL,
    [IntegrationTx_Amount]                     DECIMAL (18, 2) NULL,
    [MessageText]                              VARCHAR (300)   NULL,
    [SourceKey]                                INT             NOT NULL
);










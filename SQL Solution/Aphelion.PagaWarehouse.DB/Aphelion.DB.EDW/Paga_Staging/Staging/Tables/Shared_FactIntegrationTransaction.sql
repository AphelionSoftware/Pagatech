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
    [FactFinancialTransactionSourceKey]        INT             NULL,
    [SYS_CHANGE_OPERATION]                     CHAR (1)        DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]                       BIGINT          DEFAULT ((0)) NOT NULL
);






GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_FactIntegrationTransaction]
    ON [Staging].[Shared_FactIntegrationTransaction]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);


CREATE TABLE [Staging].[Shared_FactIntegrationTransaction] (
    [ExternalReferenceNumber]          VARCHAR (50)    NULL,
    [HasFinancialTx]                   INT             NOT NULL,
    [IntegrationTx_Amount]             DECIMAL (18, 2) NULL,
    [MessageText]                      VARCHAR (300)   NULL,
    [SourceKey]                        INT             NOT NULL,
    [DimIntegrationTxDateID]           INT             NULL,
    [DimIntegrationTxTimeID]           INT             NULL,
    [DimExternalOrganizationSourceKey] INT             NULL,
    [DimIntegrationTxResultSourceKey]  VARCHAR (255)   NULL,
    [DimIntegrationTxTypeSourceKey]    VARCHAR (255)   NULL,
    [DimProcessTypeSourceKey]          VARCHAR (255)   NOT NULL,
    [DimUserSourceKey]                 INT             NULL,
    [FactFinancialTxSourceKey]         INT             NULL,
    [SYS_CHANGE_VERSION]               BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]             CHAR (1)        DEFAULT ('I') NOT NULL
);


















GO



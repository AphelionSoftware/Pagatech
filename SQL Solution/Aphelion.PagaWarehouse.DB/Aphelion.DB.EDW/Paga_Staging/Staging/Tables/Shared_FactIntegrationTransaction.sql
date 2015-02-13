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
    [SYS_CHANGE_OPERATION]             CHAR (1)        DEFAULT ('I') NOT NULL,
    [paga_change_log_id]               INT             NULL,
    [row_id]                           INT             IDENTITY (1, 1) NOT NULL
);






















GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_FactIntegrationTransaction]
    ON [Staging].[Shared_FactIntegrationTransaction]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC, [row_id] ASC);




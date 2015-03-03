CREATE TABLE [Updates].[Shared_FactIntegrationTransaction] (
    [SourceKey]                 INT             NOT NULL,
    [DimIntegrationTxDateID]    INT             NULL,
    [DimIntegrationTxTimeID]    INT             NULL,
    [DimExternalOrganizationID] INT             NULL,
    [DimUserID]                 INT             NULL,
    [DimIntegrationTxTypeID]    INT             NULL,
    [DimProcessTypeID]          INT             NOT NULL,
    [DimIntegrationTxResultID]  INT             NULL,
    [ExternalReferenceNumber]   VARCHAR (50)    NULL,
    [MessageText]               VARCHAR (300)   NULL,
    [IntegrationTx_Amount]      DECIMAL (18, 2) NULL,
    [HasFinancialTx]            INT             NOT NULL,
    [FactFinancialTxID]         INT             NULL,
    [SYS_CHANGE_VERSION]        BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]      CHAR (1)        DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Shared_FactIntegrationTransaction_SourceKey]
    ON [Updates].[Shared_FactIntegrationTransaction]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);


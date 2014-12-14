CREATE TABLE [dbo].[Fact_IntegrationTransaction] (
    [SourceKey]                      INT             IDENTITY (1, 1) NOT NULL,
    [DimIntegrationTxDateID]         INT             NULL,
    [DimIntegrationTxTimeID]         INT             NULL,
    [ExternalOrganization_SourceKey] VARCHAR (300)   NULL,
    [ExternalOrganization_Name]      VARCHAR (300)   NULL,
    [User_SourceKey]                 INT             NULL,
    [IntegrationTxType_SourceKey]    VARCHAR (50)    NULL,
    [ProcessType_SourceKey]          VARCHAR (50)    NULL,
    [IntegrationTxResult_SourceKey]  VARCHAR (50)    NULL,
    [ExternalReferenceNumber]        VARCHAR (50)    NULL,
    [Message]                        VARCHAR (300)   NULL,
    [IntegrationTxAmount]            DECIMAL (18, 2) NULL,
    [HasFinancialTransaction]        BIT             NULL,
    [FinancialTransaction_SourceKey] INT             NULL
);


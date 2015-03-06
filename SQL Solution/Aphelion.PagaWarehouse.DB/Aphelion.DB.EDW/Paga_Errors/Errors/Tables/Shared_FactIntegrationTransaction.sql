CREATE TABLE [Errors].[Shared_FactIntegrationTransaction] (
    [QueueID]                       INT             NOT NULL,
    [SSISErrorCode]                 INT             NOT NULL,
    [SSISErrorColumn]               INT             NOT NULL,
    [PackageName]                   VARCHAR (255)   NOT NULL,
    [ErrorType]                     VARCHAR (255)   NOT NULL,
    [SourceKey]                     INT             NOT NULL,
    [DimIntegrationTxDateID]        INT             NULL,
    [DimIntegrationTxTimeID]        INT             NULL,
    [ExternalOrganizationSourceKey] INT             NULL,
    [UserSourceKey]                 INT             NULL,
    [IntegrationTxTypeSourceKey]    INT             NULL,
    [ProcessTypeSourceKey]          INT             NOT NULL,
    [IntegrationTxResultSourceKey]  INT             NULL,
    [ExternalReferenceNumber]       VARCHAR (50)    NULL,
    [MessageText]                   VARCHAR (300)   NULL,
    [IntegrationTx_Amount]          DECIMAL (18, 2) NULL,
    [HasFinancialTx]                INT             NOT NULL,
    [FinancialTxSourceKey]          INT             NULL,
    [SYS_CHANGE_VERSION]            BIGINT          NOT NULL,
    [SYS_CHANGE_OPERATION]          CHAR (1)        NOT NULL
);


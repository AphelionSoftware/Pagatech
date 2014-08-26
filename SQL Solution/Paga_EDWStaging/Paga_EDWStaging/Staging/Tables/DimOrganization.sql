CREATE TABLE [Staging].[DimOrganization] (
    [DimOrganizationID]                   INT            NULL,
    [Code]                                VARCHAR (50)   NOT NULL,
    [DeltaHash]                           BIGINT         NOT NULL,
    [Description]                         VARCHAR (1000) NULL,
    [DimBusinessTypeID]                   INT            NOT NULL,
    [DimOrganizationSubscriptionStatusID] INT            NOT NULL,
    [DimOrganizationVerificationStatusID] INT            NOT NULL,
    [DimPagaAccountID]                    INT            NOT NULL,
    [DisplayName]                         VARCHAR (100)  NULL,
    [Name]                                VARCHAR (255)  NOT NULL,
    [RcName]                              VARCHAR (50)   NULL,
    [ReferenceNumber]                     VARCHAR (30)   NULL,
    [SourceKey]                           VARCHAR (255)  NOT NULL,
    [SourceKeyHash]                       BIGINT         NOT NULL,
    [sysCreatedBy]                        VARCHAR (255)  NOT NULL,
    [sysCreatedOn]                        DATETIME       NOT NULL,
    [sysModifiedBy]                       VARCHAR (255)  NOT NULL,
    [sysModifiedOn]                       DATETIME       NOT NULL,
    [TaxIDNumber]                         VARCHAR (30)   NOT NULL,
    [VATCertificationNumber]              VARCHAR (30)   NULL,
    [WebsiteURL]                          VARCHAR (100)  NULL
);


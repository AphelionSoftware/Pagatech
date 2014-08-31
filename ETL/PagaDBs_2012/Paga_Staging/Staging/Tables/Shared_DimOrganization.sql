CREATE TABLE [Staging].[Shared_DimOrganization] (
    [SourceKey]                               VARCHAR (255)  NOT NULL,
    [Name]                                    VARCHAR (255)  NOT NULL,
    [Code]                                    VARCHAR (50)   NOT NULL,
    [BusinessTypeSourceKey]                   INT            NOT NULL,
    [OrganizationSubscriptionStatusSourceKey] INT            NOT NULL,
    [OrganizationVerificationStatusSourceKey] INT            NOT NULL,
    [MerchantPagaAccountSourceKey]            INT            NOT NULL,
    [Description]                             VARCHAR (1000) NULL,
    [ReferenceNumber]                         VARCHAR (30)   NULL,
    [TaxIDNumber]                             VARCHAR (30)   NOT NULL,
    [VATCertificationNumber]                  VARCHAR (30)   NULL,
    [RcName]                                  VARCHAR (50)   NULL,
    [WebsiteURL]                              VARCHAR (100)  NULL,
    [OrganizationCode]                        VARCHAR (10)   NULL,
    [DisplayName]                             VARCHAR (100)  NULL
);


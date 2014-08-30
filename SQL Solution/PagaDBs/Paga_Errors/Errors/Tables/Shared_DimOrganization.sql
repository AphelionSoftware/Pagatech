CREATE TABLE [Errors].[Shared_DimOrganization] (
    [QueueID]                                 INT            NOT NULL,
    [SSISErrorCode]                           INT            NOT NULL,
    [SSISErrorColumn]                         INT            NOT NULL,
    [PackageName]                             VARCHAR (255)  NOT NULL,
    [ErrorType]                               VARCHAR (255)  NOT NULL,
    [BusinessTypeSourceKey]                   INT            NOT NULL,
    [Code]                                    VARCHAR (50)   NOT NULL,
    [Description]                             VARCHAR (1000) NULL,
    [DisplayName]                             VARCHAR (100)  NULL,
    [MerchantPagaAccountSourceKey]            INT            NOT NULL,
    [Name]                                    VARCHAR (255)  NOT NULL,
    [OrganizationCode]                        VARCHAR (10)   NULL,
    [OrganizationSubscriptionStatusSourceKey] INT            NOT NULL,
    [OrganizationVerificationStatusSourceKey] INT            NOT NULL,
    [RcName]                                  VARCHAR (50)   NULL,
    [ReferenceNumber]                         VARCHAR (30)   NULL,
    [TaxIDNumber]                             VARCHAR (30)   NOT NULL,
    [VATCertificationNumber]                  VARCHAR (30)   NULL,
    [WebsiteURL]                              VARCHAR (100)  NULL
);


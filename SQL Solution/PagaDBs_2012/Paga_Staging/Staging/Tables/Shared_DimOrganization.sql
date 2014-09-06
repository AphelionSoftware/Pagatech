CREATE TABLE [Staging].[Shared_DimOrganization] (
    [Code]                                       VARCHAR (50)   NOT NULL,
    [DisplayName]                                VARCHAR (100)  NULL,
    [Name]                                       VARCHAR (255)  NOT NULL,
    [OrganizationCode]                           VARCHAR (10)   NULL,
    [RcName]                                     VARCHAR (50)   NULL,
    [ReferenceNumber]                            VARCHAR (30)   NULL,
    [SourceKey]                                  VARCHAR (255)  NOT NULL,
    [TaxIDNumber]                                VARCHAR (30)   NOT NULL,
    [TextDesciption]                             VARCHAR (1000) NULL,
    [VATCertificationNumber]                     VARCHAR (30)   NULL,
    [WebsiteURL]                                 VARCHAR (100)  NULL,
    [DimBusinessTypeSourceKey]                   VARCHAR (255)  NOT NULL,
    [DimMerchantPagaAccountSourceKey]            VARCHAR (255)  NOT NULL,
    [DimOrganizationSubscriptionStatusSourceKey] VARCHAR (255)  NOT NULL,
    [DimOrganizationVerificationStatusSourceKey] VARCHAR (255)  NOT NULL,
    [change_operation]                           CHAR (1)       DEFAULT ((1)) NOT NULL
);








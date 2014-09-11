CREATE TABLE [Staging].[Shared_DimOrganization] (
    [SourceKey]                                  VARCHAR (255)  NOT NULL,
    [Name]                                       VARCHAR (255)  NOT NULL,
    [DimBusinessTypeSourceKey]                   VARCHAR (50)   NOT NULL,
    [DimOrganizationSubscriptionStatusSourceKey] VARCHAR (50)   NOT NULL,
    [DimOrganizationVerificationStatusSourceKey] VARCHAR (50)   NOT NULL,
    [DimPagaAccountSourceKey]                    INT            NOT NULL,
    [DimMerchantCategorySourceKey]               VARCHAR (50)   NOT NULL,
    [DimProcessChannelSourceKey]                 VARCHAR (50)   NOT NULL,
    [TextDesciption]                             VARCHAR (1000) NULL,
    [ReferenceNumber]                            VARCHAR (30)   NULL,
    [TaxIDNumber]                                VARCHAR (30)   NULL,
    [VATCertificationNumber]                     VARCHAR (30)   NULL,
    [RcName]                                     VARCHAR (50)   NULL,
    [WebsiteURL]                                 VARCHAR (100)  NULL,
    [OrganizationCode]                           VARCHAR (10)   NULL,
    [DisplayName]                                VARCHAR (100)  NULL,
    [change_operation]                           CHAR (1)       DEFAULT ((1)) NOT NULL
);














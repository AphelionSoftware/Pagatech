CREATE TABLE [Staging].[DimOrganization] (
    [DimOrganizationID]                          INT            NULL,
    [DeltaHash]                                  BIGINT         NULL,
    [DisplayName]                                VARCHAR (100)  NULL,
    [Name]                                       VARCHAR (255)  NOT NULL,
    [OrganizationCode]                           VARCHAR (10)   NULL,
    [RcName]                                     VARCHAR (50)   NULL,
    [ReferenceNumber]                            VARCHAR (30)   NULL,
    [SourceKey]                                  VARCHAR (255)  NOT NULL,
    [SourceKeyHash]                              BIGINT         NULL,
    [TaxIDNumber]                                VARCHAR (30)   NULL,
    [TextDesciption]                             VARCHAR (1000) NULL,
    [VATCertificationNumber]                     VARCHAR (30)   NULL,
    [WebsiteURL]                                 VARCHAR (100)  NULL,
    [DimBusinessTypeSourceKey]                   VARCHAR (255)  NOT NULL,
    [DimProcessChannelSourceKey]                 VARCHAR (255)  NOT NULL,
    [DimMerchantCategorySourceKey]               VARCHAR (255)  NOT NULL,
    [DimOrganizationSubscriptionStatusSourceKey] VARCHAR (255)  NOT NULL,
    [DimOrganizationVerificationStatusSourceKey] VARCHAR (255)  NOT NULL,
    [DimPagaAccountSourceKey]                    VARCHAR (255)  NOT NULL
);


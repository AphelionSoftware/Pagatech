CREATE TABLE [Errors].[Shared_DimOrganization] (
    [QueueID]                                    INT            NOT NULL,
    [SSISErrorCode]                              INT            NOT NULL,
    [SSISErrorColumn]                            INT            NOT NULL,
    [PackageName]                                VARCHAR (255)  NOT NULL,
    [ErrorType]                                  VARCHAR (255)  NOT NULL,
    [DeltaHash]                                  BIGINT         NULL,
    [DimBusinessTypeSourceKey]                   VARCHAR (255)  NOT NULL,
    [DimMerchantCategorySourceKey]               VARCHAR (255)  NOT NULL,
    [DimOrganizationID]                          INT            NULL,
    [DimOrganizationSubscriptionStatusSourceKey] VARCHAR (255)  NOT NULL,
    [DimOrganizationVerificationStatusSourceKey] VARCHAR (255)  NOT NULL,
    [DimPagaAccountSourceKey]                    INT            NOT NULL,
    [DimProcessChannelSourceKey]                 VARCHAR (255)  NOT NULL,
    [DisplayName]                                VARCHAR (100)  NULL,
    [Name]                                       VARCHAR (255)  NOT NULL,
    [OrganizationCode]                           VARCHAR (10)   NULL,
    [RcName]                                     VARCHAR (50)   NULL,
    [ReferenceNumber]                            VARCHAR (30)   NULL,
    [SourceKey]                                  INT            NOT NULL,
    [SourceKeyHash]                              BIGINT         NULL,
    [TaxIDNumber]                                VARCHAR (30)   NULL,
    [TextDesciption]                             VARCHAR (1000) NULL,
    [VATCertificationNumber]                     VARCHAR (30)   NULL,
    [WebsiteURL]                                 VARCHAR (100)  NULL
);




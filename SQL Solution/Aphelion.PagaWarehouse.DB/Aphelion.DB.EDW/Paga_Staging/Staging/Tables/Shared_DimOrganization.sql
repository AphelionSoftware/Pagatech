CREATE TABLE [Staging].[Shared_DimOrganization] (
    [DisplayName]                                VARCHAR (100)  NULL,
    [Name]                                       VARCHAR (255)  NOT NULL,
    [OrganizationCode]                           VARCHAR (10)   NULL,
    [RcName]                                     VARCHAR (50)   NULL,
    [ReferenceNumber]                            VARCHAR (30)   NULL,
    [SourceKey]                                  INT            NOT NULL,
    [TaxIDNumber]                                VARCHAR (30)   NULL,
    [TextDesciption]                             VARCHAR (1000) NULL,
    [VATCertificationNumber]                     VARCHAR (30)   NULL,
    [WebsiteURL]                                 VARCHAR (100)  NULL,
    [DimBusinessTypeSourceKey]                   VARCHAR (255)  NOT NULL,
    [DimOrganizationSubscriptionStatusSourceKey] VARCHAR (255)  NOT NULL,
    [DimOrganizationVerificationStatusSourceKey] VARCHAR (255)  NOT NULL,
    [DimPagaAccountSourceKey]                    INT            NOT NULL,
    [SYS_CHANGE_VERSION]                         BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]                       CHAR (1)       DEFAULT ('I') NOT NULL
);












GO





CREATE TABLE [Errors].[Shared_DimOrganization] (
    [QueueID]                                 INT            NOT NULL,
    [SSISErrorCode]                           INT            NOT NULL,
    [SSISErrorColumn]                         INT            NOT NULL,
    [PackageName]                             VARCHAR (255)  NOT NULL,
    [ErrorType]                               VARCHAR (255)  NOT NULL,
    [SourceKey]                               INT            NOT NULL,
    [Name]                                    VARCHAR (255)  NOT NULL,
    [BusinessTypeSourceKey]                   INT            NOT NULL,
    [OrganizationSubscriptionStatusSourceKey] INT            NOT NULL,
    [OrganizationVerificationStatusSourceKey] INT            NOT NULL,
    [PagaAccountSourceKey]                    INT            NOT NULL,
    [TextDesciption]                          VARCHAR (1000) NULL,
    [ReferenceNumber]                         VARCHAR (30)   NULL,
    [TaxIDNumber]                             VARCHAR (30)   NULL,
    [VATCertificationNumber]                  VARCHAR (30)   NULL,
    [RcName]                                  VARCHAR (50)   NULL,
    [WebsiteURL]                              VARCHAR (100)  NULL,
    [OrganizationCode]                        VARCHAR (10)   NULL,
    [DisplayName]                             VARCHAR (100)  NULL,
    [SYS_CHANGE_VERSION]                      BIGINT         NOT NULL,
    [SYS_CHANGE_OPERATION]                    CHAR (1)       NOT NULL
);


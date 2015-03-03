CREATE TABLE [Updates].[Shared_DimOrganization] (
    [SourceKey]                           INT            NOT NULL,
    [Name]                                VARCHAR (255)  NOT NULL,
    [DimBusinessTypeID]                   INT            NOT NULL,
    [DimOrganizationSubscriptionStatusID] INT            NOT NULL,
    [DimOrganizationVerificationStatusID] INT            NOT NULL,
    [DimPagaAccountID]                    INT            NOT NULL,
    [TextDesciption]                      VARCHAR (1000) NULL,
    [ReferenceNumber]                     VARCHAR (30)   NULL,
    [TaxIDNumber]                         VARCHAR (30)   NULL,
    [VATCertificationNumber]              VARCHAR (30)   NULL,
    [RcName]                              VARCHAR (50)   NULL,
    [WebsiteURL]                          VARCHAR (100)  NULL,
    [OrganizationCode]                    VARCHAR (10)   NULL,
    [DisplayName]                         VARCHAR (100)  NULL,
    [SYS_CHANGE_VERSION]                  BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]                CHAR (1)       DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Shared_DimOrganization_SourceKey]
    ON [Updates].[Shared_DimOrganization]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);


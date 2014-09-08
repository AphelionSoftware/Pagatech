CREATE TABLE [Shared].[DimOrganization] (
    [DimOrganizationID]                   INT            NOT NULL,
    [SourceKey]                           VARCHAR (255)  NOT NULL,
    [Name]                                VARCHAR (255)  NOT NULL,
    [DimBusinessTypeID]                   INT            NOT NULL,
    [DimOrganizationSubscriptionStatusID] INT            NOT NULL,
    [DimOrganizationVerificationStatusID] INT            NOT NULL,
    [DimMerchantPagaAccountID]            INT            NOT NULL,
    [TextDesciption]                      VARCHAR (1000) NULL,
    [ReferenceNumber]                     VARCHAR (30)   NULL,
    [TaxIDNumber]                         VARCHAR (30)   NOT NULL,
    [VATCertificationNumber]              VARCHAR (30)   NULL,
    [RcName]                              VARCHAR (50)   NULL,
    [WebsiteURL]                          VARCHAR (100)  NULL,
    [OrganizationCode]                    VARCHAR (10)   NULL,
    [DisplayName]                         VARCHAR (100)  NULL,
    [SourceKeyHash]                       BIGINT         NOT NULL,
    [DeltaHash]                           BIGINT         NOT NULL,
    [sys_ModifiedBy]                      VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]                      DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                       VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                       DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimOrganizationID] PRIMARY KEY CLUSTERED ([DimOrganizationID] ASC),
    CONSTRAINT [fk_DimOrganization_DimBusinessTypeID] FOREIGN KEY ([DimBusinessTypeID]) REFERENCES [Classification].[DimBusinessType] ([DimBusinessTypeID]),
    CONSTRAINT [fk_DimOrganization_DimMerchantPagaAccountID] FOREIGN KEY ([DimMerchantPagaAccountID]) REFERENCES [Shared].[DimMerchantPagaAccount] ([DimMerchantPagaAccountID]),
    CONSTRAINT [fk_DimOrganization_DimOrganizationSubscriptionStatusID] FOREIGN KEY ([DimOrganizationSubscriptionStatusID]) REFERENCES [Classification].[DimOrganizationSubscriptionStatus] ([DimOrganizationSubscriptionStatusID]),
    CONSTRAINT [fk_DimOrganization_DimOrganizationVerificationStatusID] FOREIGN KEY ([DimOrganizationVerificationStatusID]) REFERENCES [Classification].[DimOrganizationVerificationStatus] ([DimOrganizationVerificationStatusID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimOrganization_SourceKey]
    ON [Shared].[DimOrganization]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'OrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'WebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'RcName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'VATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'TaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'ReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'TextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.Organization', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'OrganizationId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	DisplayName, 
	Name, 
	OrganizationCode, 
	RcName, 
	ReferenceNumber, 
	TaxIDNumber, 
	TextDesciption, 
	VATCertificationNumber, 
	WebsiteURL, 
	DimBusinessTypeSourceKey, 
	DimMerchantPagaAccountSourceKey, 
	DimOrganizationSubscriptionStatusSourceKey, 
	DimOrganizationVerificationStatusSourceKey,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
FROM 
(
	SELECT 
		SourceKey = o.OrganizationId,
		o.DisplayName, 
		o.Name, 
		OrganizationCode = o.Code, 
		o.RcName, 
		o.ReferenceNumber, 
		o.TaxIDNumber, 
		TextDesciption = o.Description, 
		o.VATCertificationNumber, 
		o.WebsiteURL, 
		DimBusinessTypeSourceKey = o.BusinessTypeId, 
		DimMerchantPagaAccountSourceKey = o.PagaAccountId, 
		DimOrganizationSubscriptionStatusSourceKey = o.OrganizationSubscriptionStatusId, 
		DimOrganizationVerificationStatusSourceKey = o.OrganizationVerificationStatusId
		FROM dbo.Organization AS o
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


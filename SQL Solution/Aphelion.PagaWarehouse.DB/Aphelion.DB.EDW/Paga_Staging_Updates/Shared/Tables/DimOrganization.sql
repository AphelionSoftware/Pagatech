CREATE TABLE [Shared].[DimOrganization] (
    [DimOrganizationID]                   INT            IDENTITY (1, 1) NOT NULL,
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
    [SourceKeyHash]                       BIGINT         NULL,
    [DeltaHash]                           BIGINT         NULL,
    [sys_ModifiedBy]                      VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]                      DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                       VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                       DATETIME       DEFAULT (getdate()) NOT NULL,
    [IsActive]                            BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_DimOrganizationID] PRIMARY KEY CLUSTERED ([DimOrganizationID] ASC),
    CONSTRAINT [fk_DimOrganization_DimBusinessTypeID] FOREIGN KEY ([DimBusinessTypeID]) REFERENCES [Classification].[DimBusinessType] ([DimBusinessTypeID]),
    CONSTRAINT [fk_DimOrganization_DimOrganizationSubscriptionStatusID] FOREIGN KEY ([DimOrganizationSubscriptionStatusID]) REFERENCES [Classification].[DimOrganizationSubscriptionStatus] ([DimOrganizationSubscriptionStatusID]),
    CONSTRAINT [fk_DimOrganization_DimOrganizationVerificationStatusID] FOREIGN KEY ([DimOrganizationVerificationStatusID]) REFERENCES [Classification].[DimOrganizationVerificationStatus] ([DimOrganizationVerificationStatusID]),
    CONSTRAINT [fk_DimOrganization_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimOrganization_SourceKey]
    ON [Shared].[DimOrganization]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	SourceKey, 	DisplayName,  	Name,  	OrganizationCode,  	RcName,  	ReferenceNumber,  	TaxIDNumber,  	TextDesciption,  	VATCertificationNumber,  	WebsiteURL,  	
DimBusinessTypeSourceKey,  	DimPagaAccountSourceKey,  	DimOrganizationSubscriptionStatusSourceKey,  	DimOrganizationVerificationStatusSourceKey, 	DimMerchantCategorySourceKey, 	
 ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, 	SYS_CHANGE_VERSION = ct.as_of_change_version 	 
FROM  ( 	SELECT  		SourceKey = o.OrganizationId, 		DisplayName = CONVERT(VARCHAR(100),o.DisplayName),  		
Name = CONVERT(VARCHAR(255),o.Name),  		OrganizationCode = o.Code,  		o.RcName,  		o.ReferenceNumber,  		o.TaxIDNumber,  		
TextDesciption = CONVERT(VARCHAR(1000), o.Description), 		o.VATCertificationNumber,  		o.WebsiteURL,  		
DimBusinessTypeSourceKey = COALESCE(o.BusinessTypeId, ''UNKNOWN''),  		
DimPagaAccountSourceKey = o.PagaAccountId,  		DimOrganizationSubscriptionStatusSourceKey = o.OrganizationSubscriptionStatusId,  		
DimOrganizationVerificationStatusSourceKey = o.OrganizationVerificationStatusId, 		
DimMerchantCategorySourceKey = CONVERT(VARCHAR(50), COALESCE(omc.MerchantCategoryId, ''UNKNOWN''))		
	
FROM dbo.Organization AS o 	LEFT JOIN dbo.OrganizationMerchantCategory AS omc ON 		
o.OrganizationId = omc.OrganizationId 	 ) 
AS base_query ', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'OrganizationId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2200', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.Organization', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DeltaHash';


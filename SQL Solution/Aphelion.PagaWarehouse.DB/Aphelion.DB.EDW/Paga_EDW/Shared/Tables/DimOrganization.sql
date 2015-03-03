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
    [sys_ModifiedBy]                      VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]                      DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                       VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                       DATETIME       DEFAULT (getdate()) NOT NULL,
    [IsActive]                            BIT            DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]                  BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]                CHAR (1)       DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimOrganizationID] PRIMARY KEY CLUSTERED ([DimOrganizationID] ASC),
    CONSTRAINT [fk_DimOrganization_DimBusinessTypeID] FOREIGN KEY ([DimBusinessTypeID]) REFERENCES [Classification].[DimBusinessType] ([DimBusinessTypeID]),
    CONSTRAINT [fk_DimOrganization_DimOrganizationSubscriptionStatusID] FOREIGN KEY ([DimOrganizationSubscriptionStatusID]) REFERENCES [Classification].[DimOrganizationSubscriptionStatus] ([DimOrganizationSubscriptionStatusID]),
    CONSTRAINT [fk_DimOrganization_DimOrganizationVerificationStatusID] FOREIGN KEY ([DimOrganizationVerificationStatusID]) REFERENCES [Classification].[DimOrganizationVerificationStatus] ([DimOrganizationVerificationStatusID]),
    CONSTRAINT [fk_DimOrganization_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID])
);
































GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.Organization', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2200', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';




GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'OrganizationId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';


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
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimOrganization_SourceKey]
    ON [Shared].[DimOrganization]([SourceKey] ASC);




GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Shared].[DimOrganization] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Shared_DimOrganization AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.Name = Source.Name,Target.DimBusinessTypeID = Source.DimBusinessTypeID,Target.DimOrganizationSubscriptionStatusID = Source.DimOrganizationSubscriptionStatusID,Target.DimOrganizationVerificationStatusID = Source.DimOrganizationVerificationStatusID,Target.DimPagaAccountID = Source.DimPagaAccountID,Target.TextDesciption = Source.TextDesciption,Target.ReferenceNumber = Source.ReferenceNumber,Target.TaxIDNumber = Source.TaxIDNumber,Target.VATCertificationNumber = Source.VATCertificationNumber,Target.RcName = Source.RcName,Target.WebsiteURL = Source.WebsiteURL,Target.OrganizationCode = Source.OrganizationCode,Target.DisplayName = Source.DisplayName,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,Name,DimBusinessTypeID,DimOrganizationSubscriptionStatusID,DimOrganizationVerificationStatusID,DimPagaAccountID,TextDesciption,ReferenceNumber,TaxIDNumber,VATCertificationNumber,RcName,WebsiteURL,OrganizationCode,DisplayName,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.Name,Source.DimBusinessTypeID,Source.DimOrganizationSubscriptionStatusID,Source.DimOrganizationVerificationStatusID,Source.DimPagaAccountID,Source.TextDesciption,Source.ReferenceNumber,Source.TaxIDNumber,Source.VATCertificationNumber,Source.RcName,Source.WebsiteURL,Source.OrganizationCode,Source.DisplayName,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganization';






GO
CREATE NONCLUSTERED INDEX [ix_DimOrganization_ChangeVersion]
    ON [Shared].[DimOrganization]([SYS_CHANGE_VERSION] ASC);


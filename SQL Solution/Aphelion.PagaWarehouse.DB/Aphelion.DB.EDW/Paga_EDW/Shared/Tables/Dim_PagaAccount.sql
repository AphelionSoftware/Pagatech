CREATE TABLE [Shared].[DimPagaAccount] (
    [DimPagaAccountID]       INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]              INT           NOT NULL,
    [Name]                   VARCHAR (255) NOT NULL,
    [DimPagaAccountStatusID] INT           NOT NULL,
    [DimCreatedDateID]       INT           NOT NULL,
    [DimRegistrationDateID]  INT           NULL,
    [PagaAccountNumber]      VARCHAR (12)  NULL,
    [ExternalAccountNumber]  VARCHAR (12)  NULL,
    [BankingStatus]          VARCHAR (50)  NOT NULL,
    [hasOnlineAccount]       BIT           NULL,
    [IsActivePagaAccount]    BIT           NULL,
    [IsEnabled]              BIT           NULL,
    [IsAffiliate]            BIT SPARSE    NULL,
    [IsAgent]                BIT SPARSE    NULL,
    [IsBank]                 BIT SPARSE    NULL,
    [IsBusiness]             BIT SPARSE    NULL,
    [IsCardProcessor]        BIT SPARSE    NULL,
    [IsCashCollector]        BIT SPARSE    NULL,
    [IsCustomer]             BIT SPARSE    NULL,
    [IsMerchant]             BIT SPARSE    NULL,
    [IsMobileOperator]       BIT SPARSE    NULL,
    [IsPaga]                 BIT SPARSE    NULL,
    [IsRemittanceProcessor]  BIT SPARSE    NULL,
    [IsServiceAggregator]    BIT SPARSE    NULL,
    [sys_ModifiedBy]         VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]          VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]          DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]               BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_DimPagaAccountID] PRIMARY KEY CLUSTERED ([DimPagaAccountID] ASC),
    CONSTRAINT [fk_DimPagaAccount_DimCreatedDateID] FOREIGN KEY ([DimCreatedDateID]) REFERENCES [Shared].[DimDate] ([DateID]),
    CONSTRAINT [fk_DimPagaAccount_DimPagaAccountStatusID] FOREIGN KEY ([DimPagaAccountStatusID]) REFERENCES [Classification].[DimPagaAccountStatus] ([DimPagaAccountStatusID]),
    CONSTRAINT [fk_DimPagaAccount_DimRegistrationDateID] FOREIGN KEY ([DimRegistrationDateID]) REFERENCES [Shared].[DimDate] ([DateID])
);
















GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimPagaAccount_SourceKey]
    ON [Shared].[DimPagaAccount]([SourceKey] ASC, [DimPagaAccountID] ASC);




GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2100', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount';




GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.PagaAccount', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'PagaAccountId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	
	SourceKey, 
	Name,  
	DimPagaAccountStatusSourceKey,  	
	CreatedDateID, 	
	RegistrationDateID,  	
	PagaAccountNumber,  	
	ExternalAccountNumber,  	
	BankingStatus,  	
	hasOnlineAccount,  	
	IsActivePagaAccount,  	
	IsEnabled,  	
	IsAffiliate,  	
	IsAgent,  	
	IsBank,  	
	IsBusiness,  	
	IsCardProcessor,  	
	IsCashCollector,  	
	IsCustomer,  	
	IsMerchant,  	
	IsMobileOperator,  	
	IsPaga,  	
	IsRemittanceProcessor,  	
	IsServiceAggregator, 
	ct.SYS_CHANGE_OPERATION, 
	paga_change_log_id = ct.row_id, 
	SYS_CHANGE_VERSION = ct.as_of_change_version 
FROM  ( 	
SELECT 		

SourceKey = pa1.PagaAccountId, 		
Name = pa1.PagaAccountNumber, 		
DimPagaAccountStatusSourceKey = pa1.PagaAccountStatusId, 		
CreatedDateID = CONVERT(INT,(CONVERT(VARCHAR(8),pa1.CreatedDate,112))),  		
RegistrationDateID = COALESCE(CONVERT(INT,(CONVERT(VARCHAR(8),pa1.RegistrationDate,112))),NULL), 		
pa1.PagaAccountNumber,  		
pa1.ExternalAccountNumber,  		
BankingStatus = pa1.BankingStatusId,  		
pa1.hasOnlineAccount,  		
IsActivePagaAccount = pa1.IsActive,  		
pa1.IsEnabled,  		
IsAffiliate = pa2.affiliate, 		
IsAgent = pa2.agent, 		
IsBank = pa2.bank, 		
IsBusiness = pa2.business, 		
IsCardProcessor = pa2.card_processor, 		
IsCashCollector = pa2.cash_collector, 		
IsCustomer = pa2.customer, 		
IsMerchant = pa2.merchant, 		
IsMobileOperator = pa2.mobile_operator, 		
IsPaga = pa2.paga, 		
IsRemittanceProcessor = pa2.remittance_processor, 		
IsServiceAggregator = pa2.service_aggregator 	
FROM dbo.PagaAccount as pa1 	
LEFT JOIN 	( 		
SELECT 			
pa.PagaAccountId,  			
MAX(CASE WHEN pan.NatureId = ''AFFLIATE'' THEN 1 ELSE NULL END) AS ''affiliate'', 			
MAX(CASE WHEN pan.NatureId = ''AGENT'' THEN 1 ELSE NULL END) AS ''agent'', 			
MAX(CASE WHEN pan.NatureId = ''BANK'' THEN 1 ELSE NULL END) AS ''bank'', 			
MAX(CASE WHEN pan.NatureId = ''BUSINESS'' THEN 1 ELSE NULL END) AS ''business'', 			
MAX(CASE WHEN pan.NatureId = ''CARD_PROCESSOR'' THEN 1 ELSE NULL END) AS ''card_processor'', 			
MAX(CASE WHEN pan.NatureId = ''CASH_COLLECTOR'' THEN 1 ELSE NULL END) AS ''cash_collector'', 			
MAX(CASE WHEN pan.NatureId = ''CUSTOMER'' THEN 1 ELSE NULL END) AS ''customer'', 			
MAX(CASE WHEN pan.NatureId = ''MERCHANT'' THEN 1 ELSE NULL END) AS ''merchant'', 			
MAX(CASE WHEN pan.NatureId = ''MOBILE_OPERATOR'' THEN 1 ELSE NULL END) AS ''mobile_operator'', 			
MAX(CASE WHEN pan.NatureId = ''PAGA'' THEN 1 ELSE NULL END) AS ''paga'', 			
MAX(CASE WHEN pan.NatureId = ''REMITTANCE_PROCESSOR'' THEN 1 ELSE NULL END) AS ''remittance_processor'', 			
MAX(CASE WHEN pan.NatureId = ''SERVICE_AGGREGATOR'' THEN 1 ELSE NULL END) AS ''service_aggregator'' 		
FROM dbo.PagaAccount AS pa 		INNER JOIN dbo.PagaAccountNature as pan ON 			pa.PagaAccountId = pan.PagaAccountId 		
GROUP BY 			pa.PagaAccountId 		) AS pa2 ON 			pa1.PagaAccountId = pa2.PagaAccountId ) AS base_query', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount';








GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET 
	edw.SourceKey = stg.SourceKey,edw.Name = stg.Name,edw.DimPagaAccountStatusID = stg.DimPagaAccountStatusID,edw.CreatedDateID = stg.CreatedDateID,edw.RegistrationDateID = stg.RegistrationDateID,edw.PagaAccountNumber = stg.PagaAccountNumber,edw.ExternalAccountNumber = stg.ExternalAccountNumber,edw.BankingStatus = stg.BankingStatus,edw.hasOnlineAccount = stg.hasOnlineAccount,edw.IsActivePagaAccount = stg.IsActivePagaAccount,edw.IsEnabled = stg.IsEnabled,edw.IsAffiliate = stg.IsAffiliate,edw.IsAgent = stg.IsAgent,edw.IsBank = stg.IsBank,edw.IsBusiness = stg.IsBusiness,edw.IsCardProcessor = stg.IsCardProcessor,edw.IsCashCollector = stg.IsCashCollector,edw.IsCustomer = stg.IsCustomer,edw.IsMerchant = stg.IsMerchant,edw.IsMobileOperator = stg.IsMobileOperator,edw.IsPaga = stg.IsPaga,edw.IsRemittanceProcessor = stg.IsRemittanceProcessor,edw.IsServiceAggregator = stg.IsServiceAggregator
	FROM Shared.DimPagaAccount AS edw
	INNER JOIN Paga_Staging.Updates.Shared_DimPagaAccount AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPagaAccount';


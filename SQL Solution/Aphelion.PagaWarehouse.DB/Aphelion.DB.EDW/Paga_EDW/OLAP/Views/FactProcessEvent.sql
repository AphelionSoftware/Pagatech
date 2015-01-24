  

CREATE VIEW [OLAP].[FactProcessEvent]
AS

SELECT 
	[FactProcessEvent_3437152713165762907].[AgentCommissionAmount] AS [FactProcessEventAgentCommissionAmount]
	,[FactProcessEvent_3437152713165762907].[ATMReferenceNumber] AS [FactProcessEventATMReferenceNumber]
	,[FactProcessEvent_3437152713165762907].[CardProcessorName] AS [FactProcessEventCardProcessorName]
	,[FactProcessEvent_3437152713165762907].[CustomerBillerAccount] AS [FactProcessEventCustomerBillerAccount]
	,[FactProcessEvent_3437152713165762907].[CustomerPhoneNumber] AS [FactProcessEventCustomerPhoneNumber]
	,[FactProcessEvent_3437152713165762907].[DepositNumber] AS [FactProcessEventDepositNumber]
	,[FactProcessEvent_3437152713165762907].[DimAgentCommissionTypeID] AS [FactProcessEventDimAgentCommissionTypeID]
	,[FactProcessEvent_3437152713165762907].[DimApprovedByUserID] AS [FactProcessEventDimApprovedByUserID]
	,[FactProcessEvent_3437152713165762907].[DimCancellationApprovedByUserID] AS [FactProcessEventDimCancellationApprovedByUserID]
	,[FactProcessEvent_3437152713165762907].[DimCompletedDateID] AS [FactProcessEventDimCompletedDateID]
	,[FactProcessEvent_3437152713165762907].[DimCompletedTimeID] AS [FactProcessEventDimCompletedTimeID]
	,[FactProcessEvent_3437152713165762907].[DimForUserID] AS [FactProcessEventDimForUserID]
	,[FactProcessEvent_3437152713165762907].[DimInitiatingUserID] AS [FactProcessEventDimInitiatingUserID]
	,[FactProcessEvent_3437152713165762907].[DimOriginalProcessChannelID] AS [FactProcessEventDimOriginalProcessChannelID]
	,[FactProcessEvent_3437152713165762907].[DimProcessChannelID] AS [FactProcessEventDimProcessChannelID]
	,[FactProcessEvent_3437152713165762907].[DimProcessStatusID] AS [FactProcessEventDimProcessStatusID]
	,[FactProcessEvent_3437152713165762907].[DimProcessTypeID] AS [FactProcessEventDimProcessTypeID]
	,[FactProcessEvent_3437152713165762907].[DimToUserID] AS [FactProcessEventDimToUserID]
	,[FactProcessEvent_3437152713165762907].[DimUserID] AS [FactProcessEventDimUserID]
	,[FactProcessEvent_3437152713165762907].[DimVerifiedByUserID] AS [FactProcessEventDimVerifiedByUserID]
	,[FactProcessEvent_3437152713165762907].[FactDependentProcessEventID] AS [FactProcessEventFactDependentProcessEventID]
	,[FactProcessEvent_3437152713165762907].[FactOriginalProcessEventID] AS [FactProcessEventFactOriginalProcessEventID]
	,[FactProcessEvent_3437152713165762907].[FactProcessEventID] AS [FactProcessEventID]
	,[FactProcessEvent_3437152713165762907].[HasFinancialTransaction] AS [FactProcessEventHasFinancialTransaction]
	,[FactProcessEvent_3437152713165762907].[IntegrationReferenceNumber] AS [FactProcessEventIntegrationReferenceNumber]
	,[FactProcessEvent_3437152713165762907].[LinkedPhoneNumber] AS [FactProcessEventLinkedPhoneNumber]
	,[FactProcessEvent_3437152713165762907].[MerchantConfirmationCode] AS [FactProcessEventMerchantConfirmationCode]
	,[FactProcessEvent_3437152713165762907].[MerchantCustomerAccountNumber] AS [FactProcessEventMerchantCustomerAccountNumber]
	,[FactProcessEvent_3437152713165762907].[Name] AS [FactProcessEventName]
	,[FactProcessEvent_3437152713165762907].[PaymentSource] AS [FactProcessEventPaymentSource]
	,[FactProcessEvent_3437152713165762907].[ProcessAmount] AS [FactProcessEventProcessAmount]
	,[FactProcessEvent_3437152713165762907].[ProcessCode] AS [FactProcessEventProcessCode]
	,[FactProcessEvent_3437152713165762907].[ProcessFee] AS [FactProcessEventProcessFee]
	,[FactProcessEvent_3437152713165762907].[ReferenceNumber] AS [FactProcessEventReferenceNumber]
	,[FactProcessEvent_3437152713165762907].[SenderPhoneNumber] AS [FactProcessEventSenderPhoneNumber]
	,[FactProcessEvent_3437152713165762907].[SourceKey] AS [FactProcessEventSourceKey]
	,[FactProcessEvent_3437152713165762907].[VerificationStatus] AS [FactProcessEventVerificationStatus]
	,[FactProcessEvent_3437152713165762907].[WithdrawalCode] AS [FactProcessEventWithdrawalCode]
	,[DimAgentCommissionType_7237907078333841212].[DimAgentCommissionTypeID] AS [AgentCommissionTypeDimAgentCommissionTypeID]
	,[DimAgentCommissionType_7237907078333841212].[Name] AS [AgentCommissionTypeName]
	,[DimAgentCommissionType_7237907078333841212].[SourceKey] AS [AgentCommissionTypeSourceKey]
	,[DimUser_6621172098149922664].[CreatedDateID] AS [UserCreatedDateID]
	,[DimUser_6621172098149922664].[DateOfBirthID] AS [UserDateOfBirthID]
	,[DimUser_6621172098149922664].[DimOrganizationUnitLevel4ID] AS [UserDimOrganizationUnitLevel4ID]
	,[DimUser_6621172098149922664].[DimPagaAccountID] AS [UserDimPagaAccountID]
	,[DimUser_6089160509975086921].[DimUserID] AS [UserDimUserID]
	,[DimUser_6621172098149922664].[Email] AS [UserEmail]
	,[DimUser_6621172098149922664].[FirstName] AS [UserFirstName]
	,[DimUser_6621172098149922664].[IsEnabled] AS [UserIsEnabled]
	,[DimUser_6621172098149922664].[LastName] AS [UserLastName]
	,[DimUser_6621172098149922664].[MiddleName] AS [UserMiddleName]
	,[DimUser_6621172098149922664].[Name] AS [UserName]
	,[DimUser_6621172098149922664].[PhoneNumber] AS [UserPhoneNumber]
	,[DimUser_6621172098149922664].[Sex] AS [UserSex]
	,[DimUser_6621172098149922664].[SourceKey] AS [UserSourceKey]
	,[DimPagaAccount_8685913492098831573].[BankingStatus] AS [PagaAccountBankingStatus]
	,[DimPagaAccount_8685913492098831573].[CreatedDateID] AS [PagaAccountCreatedDateID]
	,[DimPagaAccount_8685913492098831573].[DimPagaAccountID] AS [PagaAccountDimPagaAccountID]
	,[DimPagaAccount_8685913492098831573].[DimPagaAccountStatusID] AS [PagaAccountDimPagaAccountStatusID]
	,[DimPagaAccount_8685913492098831573].[ExternalAccountNumber] AS [PagaAccountExternalAccountNumber]
	,[DimPagaAccount_8685913492098831573].[hasOnlineAccount] AS [PagaAccounthasOnlineAccount]
	,[DimPagaAccount_8685913492098831573].[IsActive] AS [PagaAccountIsActive]
	,[DimPagaAccount_8685913492098831573].[IsAffiliate] AS [PagaAccountIsAffiliate]
	,[DimPagaAccount_8685913492098831573].[IsAgent] AS [PagaAccountIsAgent]
	,[DimPagaAccount_8685913492098831573].[IsBank] AS [PagaAccountIsBank]
	,[DimPagaAccount_8685913492098831573].[IsBusiness] AS [PagaAccountIsBusiness]
	,[DimPagaAccount_8685913492098831573].[IsCardProcessor] AS [PagaAccountIsCardProcessor]
	,[DimPagaAccount_8685913492098831573].[IsCashCollector] AS [PagaAccountIsCashCollector]
	,[DimPagaAccount_8685913492098831573].[IsCustomer] AS [PagaAccountIsCustomer]
	,[DimPagaAccount_8685913492098831573].[IsEnabled] AS [PagaAccountIsEnabled]
	,[DimPagaAccount_8685913492098831573].[IsMerchant] AS [PagaAccountIsMerchant]
	,[DimPagaAccount_8685913492098831573].[IsMobileOperator] AS [PagaAccountIsMobileOperator]
	,[DimPagaAccount_8685913492098831573].[IsPaga] AS [PagaAccountIsPaga]
	,[DimPagaAccount_8685913492098831573].[IsRemittanceProcessor] AS [PagaAccountIsRemittanceProcessor]
	,[DimPagaAccount_8685913492098831573].[IsServiceAggregator] AS [PagaAccountIsServiceAggregator]
	,[DimPagaAccount_8685913492098831573].[Name] AS [PagaAccountName]
	,[DimPagaAccount_8685913492098831573].[PagaAccountNumber] AS [PagaAccountPagaAccountNumber]
	,[DimPagaAccount_8685913492098831573].[RegistrationDateID] AS [PagaAccountRegistrationDateID]
	,[DimPagaAccount_8685913492098831573].[SourceKey] AS [PagaAccountSourceKey]
	,[DimPagaAccountStatus_462953876562491120].[DimPagaAccountStatusID] AS [PagaAccountStatusDimPagaAccountStatusID]
	,[DimPagaAccountStatus_462953876562491120].[Name] AS [PagaAccountStatusName]
	,[DimPagaAccountStatus_462953876562491120].[SourceKey] AS [PagaAccountStatusSourceKey]
	,[DimProcessChannel_8747187059737330341].[DimProcessChannelID] AS [ProcessChannelDimProcessChannelID]
	,[DimProcessChannel_8747187059737330341].[Name] AS [ProcessChannelName]
	,[DimProcessChannel_8747187059737330341].[SourceKey] AS [ProcessChannelSourceKey]
	,[DimProcessChannel_8747187059737330341].[TextDesciption] AS [ProcessChannelTextDesciption]
	,[DimProcessStatus_5341225101291902262].[DimProcessStatusID] AS [ProcessStatusDimProcessStatusID]
	,[DimProcessStatus_5341225101291902262].[Name] AS [ProcessStatusName]
	,[DimProcessStatus_5341225101291902262].[SourceKey] AS [ProcessStatusSourceKey]
	,[DimProcessType_3035439716338397874].[DescriptionText] AS [ProcessTypeDescriptionText]
	,[DimProcessType_3035439716338397874].[DimProcessTypeID] AS [ProcessTypeDimProcessTypeID]
	,[DimProcessType_3035439716338397874].[Name] AS [ProcessTypeName]
	,[DimProcessType_3035439716338397874].[SourceKey] AS [ProcessTypeSourceKey]
FROM [Shared].[FactProcessEvent] AS [FactProcessEvent_3437152713165762907]

    LEFT JOIN [Classification].[DimAgentCommissionType] AS [DimAgentCommissionType_7237907078333841212] 
    
    ON  [FactProcessEvent_3437152713165762907].[DimAgentCommissionTypeID] = [DimAgentCommissionType_7237907078333841212].[DimAgentCommissionTypeID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_6621172098149922664] 
    
    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_8685913492098831573] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_462953876562491120] 
    
        ON  [DimPagaAccount_8685913492098831573].[DimPagaAccountStatusID] = [DimPagaAccountStatus_462953876562491120].[DimPagaAccountStatusID]

    ON  [DimUser_6621172098149922664].[DimPagaAccountID] = [DimPagaAccount_8685913492098831573].[DimPagaAccountID]
        

    ON  [FactProcessEvent_3437152713165762907].[DimApprovedByUserID] = [DimUser_6621172098149922664].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_5735660170439065227] 
    
    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_3219666318743625960] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_2124802176489406229] 
    
        ON  [DimPagaAccount_3219666318743625960].[DimPagaAccountStatusID] = [DimPagaAccountStatus_2124802176489406229].[DimPagaAccountStatusID]

    ON  [DimUser_5735660170439065227].[DimPagaAccountID] = [DimPagaAccount_3219666318743625960].[DimPagaAccountID]
        

    ON  [FactProcessEvent_3437152713165762907].[DimCancellationApprovedByUserID] = [DimUser_5735660170439065227].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_4497820858125966087] 
    
    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_8150053827941332388] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_4492719850805188297] 
    
        ON  [DimPagaAccount_8150053827941332388].[DimPagaAccountStatusID] = [DimPagaAccountStatus_4492719850805188297].[DimPagaAccountStatusID]

    ON  [DimUser_4497820858125966087].[DimPagaAccountID] = [DimPagaAccount_8150053827941332388].[DimPagaAccountID]
        

    ON  [FactProcessEvent_3437152713165762907].[DimForUserID] = [DimUser_4497820858125966087].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_7181510833256420938] 
    
    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_673944443216600283] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_8345308958084403186] 
    
        ON  [DimPagaAccount_673944443216600283].[DimPagaAccountStatusID] = [DimPagaAccountStatus_8345308958084403186].[DimPagaAccountStatusID]

    ON  [DimUser_7181510833256420938].[DimPagaAccountID] = [DimPagaAccount_673944443216600283].[DimPagaAccountID]
        

    ON  [FactProcessEvent_3437152713165762907].[DimInitiatingUserID] = [DimUser_7181510833256420938].[DimUserID]
        

    LEFT JOIN [Classification].[DimProcessChannel] AS [DimProcessChannel_8747187059737330341] 
    
    ON  [FactProcessEvent_3437152713165762907].[DimOriginalProcessChannelID] = [DimProcessChannel_8747187059737330341].[DimProcessChannelID]
        

    JOIN [Classification].[DimProcessChannel] AS [DimProcessChannel_7906217180335057946] 
    
        ON  [FactProcessEvent_3437152713165762907].[DimProcessChannelID] = [DimProcessChannel_7906217180335057946].[DimProcessChannelID]

    LEFT JOIN [Classification].[DimProcessStatus] AS [DimProcessStatus_5341225101291902262] 
    
    ON  [FactProcessEvent_3437152713165762907].[DimProcessStatusID] = [DimProcessStatus_5341225101291902262].[DimProcessStatusID]
        

    LEFT JOIN [Classification].[DimProcessType] AS [DimProcessType_3035439716338397874] 
    
    ON  [FactProcessEvent_3437152713165762907].[DimProcessTypeID] = [DimProcessType_3035439716338397874].[DimProcessTypeID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_6089160509975086921] 
    
    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_6611784322774794484] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_8997919134520641497] 
    
        ON  [DimPagaAccount_6611784322774794484].[DimPagaAccountStatusID] = [DimPagaAccountStatus_8997919134520641497].[DimPagaAccountStatusID]

    ON  [DimUser_6089160509975086921].[DimPagaAccountID] = [DimPagaAccount_6611784322774794484].[DimPagaAccountID]
        

    ON  [FactProcessEvent_3437152713165762907].[DimToUserID] = [DimUser_6089160509975086921].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_4493605497972367134] 
    
    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_8125979175643638319] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_6156180944272293706] 
    
        ON  [DimPagaAccount_8125979175643638319].[DimPagaAccountStatusID] = [DimPagaAccountStatus_6156180944272293706].[DimPagaAccountStatusID]

    ON  [DimUser_4493605497972367134].[DimPagaAccountID] = [DimPagaAccount_8125979175643638319].[DimPagaAccountID]
        

    ON  [FactProcessEvent_3437152713165762907].[DimUserID] = [DimUser_4493605497972367134].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_6462601555696790277] 
    
    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_5348495857329718136] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_5237741308518963227] 
    
        ON  [DimPagaAccount_5348495857329718136].[DimPagaAccountStatusID] = [DimPagaAccountStatus_5237741308518963227].[DimPagaAccountStatusID]

    ON  [DimUser_6462601555696790277].[DimPagaAccountID] = [DimPagaAccount_5348495857329718136].[DimPagaAccountID]
        

    ON  [FactProcessEvent_3437152713165762907].[DimVerifiedByUserID] = [DimUser_6462601555696790277].[DimUserID]
GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactProcessEventID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSex';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel4ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DateOfBirthID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DescriptionText', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessStatusDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessChannelDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsServiceAggregator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsRemittanceProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsPaga', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMerchant', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCustomer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCashCollector', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCardProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBusiness', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAgent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAffiliate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WithdrawalCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SenderPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessFee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PaymentSource', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantCustomerAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantConfirmationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LinkedPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IntegrationReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventHasFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventHasFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HasFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventHasFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventHasFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactOriginalProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactOriginalProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactOriginalProcessEventID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactOriginalProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactOriginalProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactDependentProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactDependentProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactDependentProcessEventID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactDependentProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactDependentProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimVerifiedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimToUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimToUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimToUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimToUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimToUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimOriginalProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimOriginalProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOriginalProcessChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimOriginalProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimOriginalProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimInitiatingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimForUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimForUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimForUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimForUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimForUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCancellationApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAgentCommissionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DepositNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerBillerAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CardProcessorName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ATMReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AgentCommissionAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAgentCommissionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeDimAgentCommissionTypeID';


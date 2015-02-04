  

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
	,[FactProcessEvent_3437152713165762907].[DimProcessChannelID] AS [FactProcessEventDimProcessChannelID]
	,[FactProcessEvent_3437152713165762907].[DimProcessStatusID] AS [FactProcessEventDimProcessStatusID]
	,[FactProcessEvent_3437152713165762907].[DimProcessTypeID] AS [FactProcessEventDimProcessTypeID]
	,[FactProcessEvent_3437152713165762907].[DimRequestedProcessChannelID] AS [FactProcessEventDimRequestedProcessChannelID]
	,[FactProcessEvent_3437152713165762907].[DimStartedDateID] AS [FactProcessEventDimStartedDateID]
	,[FactProcessEvent_3437152713165762907].[DimStartedTimeID] AS [FactProcessEventDimStartedTimeID]
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
	,[DimUser_6621172098149922664].[DimCreatedDateID] AS [UserDimCreatedDateID]
	,[DimUser_6621172098149922664].[DimDateOfBirthID] AS [UserDimDateOfBirthID]
	,[DimUser_6621172098149922664].[DimPrimaryRoleID] AS [UserDimPrimaryRoleID]
	,[DimUser_6089160509975086921].[DimUserID] AS [UserDimUserID]
	,[DimUser_6621172098149922664].[Email] AS [UserEmail]
	,[DimUser_6621172098149922664].[FirstName] AS [UserFirstName]
	,[DimUser_6621172098149922664].[Gender] AS [UserGender]
	,[DimUser_6621172098149922664].[IsEnabled] AS [UserIsEnabled]
	,[DimUser_6621172098149922664].[LastName] AS [UserLastName]
	,[DimUser_6621172098149922664].[MiddleName] AS [UserMiddleName]
	,[DimUser_6621172098149922664].[PhoneNumber] AS [UserPhoneNumber]
	,[DimUser_6621172098149922664].[SourceKey] AS [UserSourceKey]
	,[DimRole_7677510428187583045].[DimRoleID] AS [RoleDimRoleID]
	,[DimRole_7677510428187583045].[Name] AS [RoleName]
	,[DimRole_7677510428187583045].[SourceKey] AS [RoleSourceKey]
	,[DimRole_7677510428187583045].[SystemDescription] AS [RoleSystemDescription]
	,[DimRole_7677510428187583045].[TextDesciption] AS [RoleTextDesciption]
	,[DimProcessChannel_5887969232270202814].[DimProcessChannelID] AS [ProcessChannelDimProcessChannelID]
	,[DimProcessChannel_5887969232270202814].[Name] AS [ProcessChannelName]
	,[DimProcessChannel_5887969232270202814].[SourceKey] AS [ProcessChannelSourceKey]
	,[DimProcessChannel_5887969232270202814].[TextDesciption] AS [ProcessChannelTextDesciption]
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
    
    JOIN [Shared].[DimRole] AS [DimRole_7677510428187583045] 
    
        ON  [DimUser_6621172098149922664].[DimPrimaryRoleID] = [DimRole_7677510428187583045].[DimRoleID]

    ON  [FactProcessEvent_3437152713165762907].[DimApprovedByUserID] = [DimUser_6621172098149922664].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_5735660170439065227] 
    
    JOIN [Shared].[DimRole] AS [DimRole_2021327914705367320] 
    
        ON  [DimUser_5735660170439065227].[DimPrimaryRoleID] = [DimRole_2021327914705367320].[DimRoleID]

    ON  [FactProcessEvent_3437152713165762907].[DimCancellationApprovedByUserID] = [DimUser_5735660170439065227].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_4497820858125966087] 
    
    JOIN [Shared].[DimRole] AS [DimRole_3905277481429096676] 
    
        ON  [DimUser_4497820858125966087].[DimPrimaryRoleID] = [DimRole_3905277481429096676].[DimRoleID]

    ON  [FactProcessEvent_3437152713165762907].[DimForUserID] = [DimUser_4497820858125966087].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_7181510833256420938] 
    
    JOIN [Shared].[DimRole] AS [DimRole_4483502695587970709] 
    
        ON  [DimUser_7181510833256420938].[DimPrimaryRoleID] = [DimRole_4483502695587970709].[DimRoleID]

    ON  [FactProcessEvent_3437152713165762907].[DimInitiatingUserID] = [DimUser_7181510833256420938].[DimUserID]
        

    LEFT JOIN [Classification].[DimProcessChannel] AS [DimProcessChannel_5887969232270202814] 
    
    ON  [FactProcessEvent_3437152713165762907].[DimRequestedProcessChannelID] = [DimProcessChannel_5887969232270202814].[DimProcessChannelID]
        

    JOIN [Classification].[DimProcessChannel] AS [DimProcessChannel_7906217180335057946] 
    
        ON  [FactProcessEvent_3437152713165762907].[DimProcessChannelID] = [DimProcessChannel_7906217180335057946].[DimProcessChannelID]

    LEFT JOIN [Classification].[DimProcessStatus] AS [DimProcessStatus_5341225101291902262] 
    
    ON  [FactProcessEvent_3437152713165762907].[DimProcessStatusID] = [DimProcessStatus_5341225101291902262].[DimProcessStatusID]
        

    LEFT JOIN [Classification].[DimProcessType] AS [DimProcessType_3035439716338397874] 
    
    ON  [FactProcessEvent_3437152713165762907].[DimProcessTypeID] = [DimProcessType_3035439716338397874].[DimProcessTypeID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_6089160509975086921] 
    
    JOIN [Shared].[DimRole] AS [DimRole_5660700676823721044] 
    
        ON  [DimUser_6089160509975086921].[DimPrimaryRoleID] = [DimRole_5660700676823721044].[DimRoleID]

    ON  [FactProcessEvent_3437152713165762907].[DimToUserID] = [DimUser_6089160509975086921].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_4493605497972367134] 
    
    JOIN [Shared].[DimRole] AS [DimRole_5683034257241431481] 
    
        ON  [DimUser_4493605497972367134].[DimPrimaryRoleID] = [DimRole_5683034257241431481].[DimRoleID]

    ON  [FactProcessEvent_3437152713165762907].[DimUserID] = [DimUser_4493605497972367134].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_6462601555696790277] 
    
    JOIN [Shared].[DimRole] AS [DimRole_5574318129957989400] 
    
        ON  [DimUser_6462601555696790277].[DimPrimaryRoleID] = [DimRole_5574318129957989400].[DimRoleID]

    ON  [FactProcessEvent_3437152713165762907].[DimVerifiedByUserID] = [DimUser_6462601555696790277].[DimUserID]
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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleSystemDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleSystemDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SystemDescription', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleSystemDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleSystemDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimRoleID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'RoleDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserGender';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserGender';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Gender', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserGender';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserGender';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimPrimaryRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimPrimaryRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPrimaryRoleID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimPrimaryRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimPrimaryRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimDateOfBirthID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'UserDimCreatedDateID';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactProcessEventID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventID';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimRequestedProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimRequestedProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimRequestedProcessChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimRequestedProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimRequestedProcessChannelID';


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


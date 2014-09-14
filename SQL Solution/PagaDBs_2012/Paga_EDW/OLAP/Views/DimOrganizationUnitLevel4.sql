  

CREATE VIEW [OLAP].[DimOrganizationUnitLevel4]
AS

SELECT 
	[DimOrganizationUnitLevel4_7777485710692372351].[DimOrganizationUnitLevel3ID] AS [DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID]
	,[DimOrganizationUnitLevel4_7777485710692372351].[DimOrganizationUnitLevel4ID] AS [DimOrganizationUnitLevel4ID]
	,[DimOrganizationUnitLevel4_7777485710692372351].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel4DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel4_7777485710692372351].[IdentificationNumber] AS [DimOrganizationUnitLevel4IdentificationNumber]
	,[DimOrganizationUnitLevel4_7777485710692372351].[Name] AS [DimOrganizationUnitLevel4Name]
	,[DimOrganizationUnitLevel4_7777485710692372351].[SourceKey] AS [DimOrganizationUnitLevel4SourceKey]
	,[DimOrganizationUnitLevel3_30850542869455276].[DimOrganizationUnitLevel2ID] AS [DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID]
	,[DimOrganizationUnitLevel3_30850542869455276].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel3DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel3_30850542869455276].[IdentificationNumber] AS [DimOrganizationUnitLevel3IdentificationNumber]
	,[DimOrganizationUnitLevel3_30850542869455276].[Name] AS [DimOrganizationUnitLevel3Name]
	,[DimOrganizationUnitLevel3_30850542869455276].[SourceKey] AS [DimOrganizationUnitLevel3SourceKey]
	,[DimOrganizationUnitLevel2_513278681026526569].[DimOrganizationUnitLevel1ID] AS [DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID]
	,[DimOrganizationUnitLevel2_513278681026526569].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel2DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel2_513278681026526569].[IdentificationNumber] AS [DimOrganizationUnitLevel2IdentificationNumber]
	,[DimOrganizationUnitLevel2_513278681026526569].[Name] AS [DimOrganizationUnitLevel2Name]
	,[DimOrganizationUnitLevel2_513278681026526569].[SourceKey] AS [DimOrganizationUnitLevel2SourceKey]
	,[DimOrganizationUnitLevel1_3050446586451563176].[DimOrganizationID] AS [DimOrganizationUnitLevel1DimOrganizationID]
	,[DimOrganizationUnitLevel1_3050446586451563176].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel1DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel1_3050446586451563176].[IdentificationNumber] AS [DimOrganizationUnitLevel1IdentificationNumber]
	,[DimOrganizationUnitLevel1_3050446586451563176].[Name] AS [DimOrganizationUnitLevel1Name]
	,[DimOrganizationUnitLevel1_3050446586451563176].[SourceKey] AS [DimOrganizationUnitLevel1SourceKey]
	,[DimOrganization_3937509259693218153].[DimBusinessTypeID] AS [DimOrganizationDimBusinessTypeID]
	,[DimOrganization_3937509259693218153].[DimChannelID] AS [DimOrganizationDimChannelID]
	,[DimOrganization_3937509259693218153].[DimMerchantCategoryID] AS [DimOrganizationDimMerchantCategoryID]
	,[DimOrganization_3937509259693218153].[DimOrganizationSubscriptionStatusID] AS [DimOrganizationSubscriptionStatusID]
	,[DimOrganization_3937509259693218153].[DimOrganizationVerificationStatusID] AS [DimOrganizationVerificationStatusID]
	,[DimOrganization_3937509259693218153].[DimPagaAccountID] AS [DimOrganizationDimPagaAccountID]
	,[DimOrganization_3937509259693218153].[DisplayName] AS [DimOrganizationDisplayName]
	,[DimOrganization_3937509259693218153].[Name] AS [DimOrganizationName]
	,[DimOrganization_3937509259693218153].[OrganizationCode] AS [DimOrganizationOrganizationCode]
	,[DimOrganization_3937509259693218153].[RcName] AS [DimOrganizationRcName]
	,[DimOrganization_3937509259693218153].[ReferenceNumber] AS [DimOrganizationReferenceNumber]
	,[DimOrganization_3937509259693218153].[SourceKey] AS [DimOrganizationSourceKey]
	,[DimOrganization_3937509259693218153].[TaxIDNumber] AS [DimOrganizationTaxIDNumber]
	,[DimOrganization_3937509259693218153].[TextDesciption] AS [DimOrganizationTextDesciption]
	,[DimOrganization_3937509259693218153].[VATCertificationNumber] AS [DimOrganizationVATCertificationNumber]
	,[DimOrganization_3937509259693218153].[WebsiteURL] AS [DimOrganizationWebsiteURL]
	,[DimBusinessType_5526358432676261544].[Name] AS [DimBusinessTypeName]
	,[DimBusinessType_5526358432676261544].[SourceKey] AS [DimBusinessTypeSourceKey]
	,[DimChannel_3880719124803674844].[Name] AS [DimChannelName]
	,[DimChannel_3880719124803674844].[SourceKey] AS [DimChannelSourceKey]
	,[DimChannel_3880719124803674844].[TextDesciption] AS [DimChannelTextDesciption]
	,[DimOrganizationSubscriptionStatus_3849067312914943296].[Name] AS [DimOrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_3849067312914943296].[SourceKey] AS [DimOrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_7236177995454320276].[Name] AS [DimOrganizationVerificationStatusName]
	,[DimOrganizationVerificationStatus_7236177995454320276].[SourceKey] AS [DimOrganizationVerificationStatusSourceKey]
	,[DimOrganizationUnitType_9026476397251164349].[Name] AS [DimOrganizationUnitTypeName]
	,[DimOrganizationUnitType_9026476397251164349].[SourceKey] AS [DimOrganizationUnitTypeSourceKey]
FROM [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_7777485710692372351]

    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_30850542869455276] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_513278681026526569] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_3050446586451563176] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_3937509259693218153] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_5526358432676261544] 
    
        ON  [DimOrganization_3937509259693218153].[DimBusinessTypeID] = [DimBusinessType_5526358432676261544].[DimBusinessTypeID]

    JOIN [Activity].[DimChannel] AS [DimChannel_3880719124803674844] 
    
        ON  [DimOrganization_3937509259693218153].[DimChannelID] = [DimChannel_3880719124803674844].[DimChannelID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_3849067312914943296] 
    
        ON  [DimOrganization_3937509259693218153].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_3849067312914943296].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_7236177995454320276] 
    
        ON  [DimOrganization_3937509259693218153].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_7236177995454320276].[DimOrganizationVerificationStatusID]

        ON  [DimOrganizationUnitLevel1_3050446586451563176].[DimOrganizationID] = [DimOrganization_3937509259693218153].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_9026476397251164349] 
    
        ON  [DimOrganizationUnitLevel1_3050446586451563176].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_9026476397251164349].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_513278681026526569].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_3050446586451563176].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_2961539680550608932] 
    
        ON  [DimOrganizationUnitLevel2_513278681026526569].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_2961539680550608932].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_30850542869455276].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_513278681026526569].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_4896247204803682353] 
    
        ON  [DimOrganizationUnitLevel3_30850542869455276].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_4896247204803682353].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_7777485710692372351].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_30850542869455276].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_2278041476495698372] 
    
        ON  [DimOrganizationUnitLevel4_7777485710692372351].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_2278041476495698372].[DimOrganizationUnitTypeID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMerchantCategoryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel1ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel1ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel2ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel2ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel4ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel3ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel3ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


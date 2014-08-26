  

CREATE VIEW [OLAP].[DimChannel]
AS

SELECT 
	[DimChannel_6003638032027261361].[Code] AS [ChannelCode]
	,[DimChannel_6003638032027261361].[Description] AS [ChannelDescription]
	,[DimChannel_6003638032027261361].[DimChannelID] AS [ChannelDimChannelID]
	,[DimChannel_6003638032027261361].[Name] AS [ChannelName]
	,[DimChannel_6003638032027261361].[SourceKey] AS [ChannelSourceKey]
	,[DimChannel_6003638032027261361].[sysCreatedBy] AS [ChannelsysCreatedBy]
	,[DimChannel_6003638032027261361].[sysCreatedOn] AS [ChannelsysCreatedOn]
	,[DimChannel_6003638032027261361].[sysModifiedBy] AS [ChannelsysModifiedBy]
	,[DimChannel_6003638032027261361].[sysModifiedOn] AS [ChannelsysModifiedOn]
FROM [Shared].[DimChannel] AS [DimChannel_6003638032027261361]



    
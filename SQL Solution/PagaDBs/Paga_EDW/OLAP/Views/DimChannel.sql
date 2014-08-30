  

CREATE VIEW [OLAP].[DimChannel]
AS

SELECT 
	[DimChannel_6003638032027261361].[Code] AS [DimChannelCode]
	,[DimChannel_6003638032027261361].[Description] AS [DimChannelDescription]
	,[DimChannel_6003638032027261361].[DimChannelID] AS [DimChannelID]
	,[DimChannel_6003638032027261361].[Name] AS [DimChannelName]
	,[DimChannel_6003638032027261361].[SourceKey] AS [DimChannelSourceKey]
FROM [Activity].[DimChannel] AS [DimChannel_6003638032027261361]



    
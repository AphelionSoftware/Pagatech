    

CREATE VIEW [OLAP].[DimStatusCancellationApprovalStatus]
WITH SCHEMABINDING
AS

SELECT 
	[DimStatusCancellationApprovalStatus].[DimStatusCancellationApprovalStatusID] 
	,[DimStatusCancellationApprovalStatus].[Code] 
	,[DimStatusCancellationApprovalStatus].[Name] 
	,[DimStatusCancellationApprovalStatus].[SourceKey] 

FROM [Classification].[DimStatusCancellationApprovalStatus] [DimStatusCancellationApprovalStatus]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus';


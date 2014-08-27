    

CREATE VIEW [OLAP].[DimBankAccountLinkStatus]
WITH SCHEMABINDING
AS

SELECT 
	[DimBankAccountLinkStatus].[DimBankAccountLinkStatusID] 
	,[DimBankAccountLinkStatus].[Code] 
	,[DimBankAccountLinkStatus].[Name] 
	,[DimBankAccountLinkStatus].[SourceKey] 

FROM [Classification].[DimBankAccountLinkStatus] [DimBankAccountLinkStatus]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus';



CREATE VIEW [OLAP].[Classification_DimFinancialAccountType]
AS 
	SELECT
		 [SourceKey]
		,[Name]
		,[TextDesciption]
		,FinancialAccountTypePrefix =
			CASE 
				WHEN CHARINDEX('_',SourceKey,1) = 0 THEN SourceKey
				ELSE LEFT(SourceKey, CHARINDEX('_',SourceKey,0)-1)
			END
	FROM [Classification].[DimFinancialAccountType]
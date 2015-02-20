
CREATE VIEW [OLAP].[Finance_ChartOfAccounts]
AS
(
SELECT
	coa.DimChartOfAccountsID, 
	coa.GLCodeRange AS  COA_CodeRange, 
	coa.Name AS COA_Name
	
FROM Finance.DimChartOfAccounts AS coa

)
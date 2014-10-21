CREATE VIEW OLAP.Test_ChartOfAccounts
AS
(
SELECT
	coa.DimChartOfAccountsID, 
	coa.GLCodeRange AS  COA_CodeRange, 
	coa.Name AS COA_Name,
	gcg.DimGLCodeGroupID,
	gcg.GLCodeRange AS GLCodeGroup_CodeRange,
	gcg.Name AS GLCodeGroup_Name,
	gcsg.DimGLCodeSubGroupID,
	gcsg.GLCodeRange AS GLCodeSubGroup_CodeRange,
	gcsg.Name AS GLCodeSubGroup_Name,
	gc.DimGLCodeID,
	gc.GLCode,
	gc.Name AS GLCode_Name,
	fat.DimFinancialAccountTypeID,
	fat.Name AS FinancialAccountType_Name
FROM Finance.DimChartOfAccounts AS coa
INNER JOIN Finance.DimGLCodeGroup AS gcg ON
	gcg.DimChartofAccountsID = coa.DimChartOfAccountsID
INNER JOIN finance.DimGLCodeSubGroup AS gcsg ON
	gcsg.DimGLCodeGroupID = gcg.DimGLCodeGroupID
INNER JOIN Finance.DimGLCode AS gc ON
	gc.DimGLCodeSubGroupID = gcsg.DimGLCodeSubGroupID
INNER JOIN Finance.DimFinancialAccountType AS fat ON
	fat.DimGLCodeID = gc.DimGLCodeID
)







CREATE VIEW [OLAP].[Finance_GLCodeHierarchy]
AS
(
	
		SELECT
			MainHeading = 'Chart of Accounts',
			SubHeading_1 = x.Name,
			x.GLCode,
			SubHeading_2 = COALESCE(GL_Header1, (CAST(x.GLCode AS VARCHAR) )),
			SubHeading_3 = COALESCE(GL_Header2, (CAST(x.GLCode AS VARCHAR) )),
			SubHeading_4 = COALESCE(GL_Header3, (CAST(x.GLCode AS VARCHAR) )),
			x.DimGLCodeID,
			AccountTypePrefix = CASE 
				WHEN CHARINDEX('_',fat.SourceKey,1) = 0 THEN fat.SourceKey
				ELSE LEFT(fat.SourceKey, CHARINDEX('_',fat.SourceKey,0)-1)
			END,
			AccountType = fat.SourceKey,
			fa.AccountNumber,
			AccountName = 
			CASE 
				WHEN DATALENGTH(fa.Name) = 0 THEN 'No Name Available'
				ELSE fa.Name
			END,
			fa.DimFinancialHoldingAccountID,
			fa.DimBankAccountID,
			fa.DimPagaAccountID,
			fa.DimCurrencyID,
			FinancialAccountID = fa.SourceKey,
			fa.OpeningBalance,
			fa.RestrictedBalance,
			fa.TotalBalance,
			fa.DimFinancialAccountID
		FROM
		(
			SELECT
				c.DimGLCodeID,
				coa.GLCodeRange,
				coa.Name,
				GLCode =  COALESCE(c.GLCode, 0),
				GL_Header1 = cg.GLCodeRange +':  ' + cg.Name ,
				GL_Header2 = csg.GLCodeRange +':  ' + csg.Name ,
				GL_Header3 = c.GLCode +':  ' + c.Name
			FROM [Finance].[DimGLCode] AS c
			INNER JOIN Finance.DimGLCodeSubGroup AS csg ON
				c.DimGLCodeSubGroupID = csg.DimGLCodesubGroupID
			INNER JOIN Finance.DimGLCodeGroup AS cg ON
				cg.DimGLCodeGroupID = csg.DimGLCodeGroupID
			INNER JOIN Finance.DimChartOfAccounts AS coa ON
				cg.DimChartofAccountsID = coa.DimChartOfAccountsID
		) AS x
		INNER JOIN finance.DimFinancialAccount AS fa ON
			fa.DimGLCodeID = x.DimGLCodeID
		INNER JOIN Classification.DimFinancialAccountType AS fat ON
			fa.DimFinancialAccountTypeID = fat.DimFinancialAccountTypeID
)
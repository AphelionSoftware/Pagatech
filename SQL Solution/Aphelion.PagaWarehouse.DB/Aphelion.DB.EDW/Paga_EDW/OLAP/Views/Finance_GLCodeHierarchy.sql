




CREATE VIEW [OLAP].[Finance_GLCodeHierarchy]
AS
(
	SELECT TOP 2147483647
		MainHeading = 'Chart of Accounts',
		SubHeading_1 = x.Name,
		x.GLCode,
		SubHeading_2 = COALESCE(GL_Header1, (CAST(x.GLCode AS VARCHAR) )),
		SubHeading_3 = COALESCE(GL_Header2, (CAST(x.GLCode AS VARCHAR) )),
		SubHeading_4 = COALESCE(GL_Header3, (CAST(x.GLCode AS VARCHAR) )),
		DimGLCodeID
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
	)as x
	ORDER BY 
		GLCode

)
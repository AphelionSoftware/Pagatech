



CREATE VIEW [OLAP].[Finance_GLCodeHierarchy]
AS
(
SELECT TOP 2147483647
	DimGLCodeID,
	GLCodeRange = COALESCE(x.GLCodeRange, CAST(x.GLCode AS VARCHAR)),
	x.Name,
	x.GLCode,
	GL_Header1 = COALESCE(GL_Header1, (CAST(x.GLCode AS VARCHAR) )),
	GL_Header2 = COALESCE(GL_Header2, (CAST(x.GLCode AS VARCHAR) )),
	GL_Header3 = COALESCE(GL_Header3, (CAST(x.GLCode AS VARCHAR) ))
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
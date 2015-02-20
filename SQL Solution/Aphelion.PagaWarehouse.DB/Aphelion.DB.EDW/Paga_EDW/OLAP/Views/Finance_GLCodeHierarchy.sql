
CREATE VIEW [OLAP].[Finance_GLCodeHierarchy]
AS
(
SELECT 
	cg.GLCodeRange AS GLCodeGroupRange,
	cg.Name AS GLCodeGroup,
	csg.GLCodeRange,
	csg.Name AS GLCodeSubGroup,
	c.GLCode,
	c.Name AS GLDescription,
	c.DimGLCodeID,
	cg.DimChartofAccountsID 
FROM [Finance].[DimGLCode] AS c
INNER JOIN Finance.DimGLCodeSubGroup AS csg ON
	c.DimGLCodeSubGroupID = csg.DimGLCodesubGroupID
INNER JOIN Finance.DimGLCodeGroup AS cg ON
	cg.DimGLCodeGroupID = csg.DimGLCodeGroupID
WHERE 
	DimGLCodeID > -1

)
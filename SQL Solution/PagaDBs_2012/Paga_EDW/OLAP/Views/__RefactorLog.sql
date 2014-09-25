    

CREATE VIEW [OLAP].[__RefactorLog]
AS

SELECT 
	[__RefactorLog].[OperationKey] 

FROM [dbo].[__RefactorLog] [__RefactorLog]
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'__RefactorLog';


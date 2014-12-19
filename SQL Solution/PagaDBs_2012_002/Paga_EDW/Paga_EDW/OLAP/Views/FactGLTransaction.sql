    

CREATE VIEW [OLAP].[FactGLTransaction]
AS

SELECT 
	[FactGLTransaction].[CreditAmount] 
	,[FactGLTransaction].[DebitAmount] 
	,[FactGLTransaction].[FactGLTxID] 
	,[FactGLTransaction].[Movement] 
	,[FactGLTransaction].[SourceKey] 
	,[FactGLTransaction].[TextDescription] 
	,[FactGLTransaction].[TransactionLineNumber] 
	,[FactGLTransaction].[DimFinancialAccountID] 
	,[FactGLTransaction].[DimGLCodeID] 
	,[FactGLTransaction].[FactFinancialTxID] 

FROM [Finance].[FactGLTransaction] [FactGLTransaction]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactGLTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactFinancialTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactGLTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'DimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'DimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'DimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactGLTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactGLTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'TransactionLineNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'TransactionLineNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TransactionLineNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'TransactionLineNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactGLTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'TextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'TextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDescription', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'TextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactGLTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactGLTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'Movement';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'Movement';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Movement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'Movement';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactGLTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'FactGLTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'FactGLTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactGLTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'FactGLTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactGLTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactGLTransaction';


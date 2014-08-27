
    

CREATE VIEW [OLAP].[FactAirtimeStockMovement]
AS

SELECT 
	[FactAirtimeStockMovement].[FactAirtimeStockMovementID] 
	,[FactAirtimeStockMovement].[DimCityID] 
	,[FactAirtimeStockMovement].[DimDateID] 
	,[FactAirtimeStockMovement].[DimMobileOperatorID] 
	,[FactAirtimeStockMovement].[DimOrganizationUnitLevel5ID] 
	,[FactAirtimeStockMovement].[DimPagaAccountID] 
	,[FactAirtimeStockMovement].[MovementAmount] 


FROM [Airtime].[FactAirtimeStockMovement] [FactAirtimeStockMovement]
GO



GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'MovementAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'MovementAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MovementAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'MovementAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MovementAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'MovementAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMobileOperatorID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimMobileOperatorID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement';


/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW OLAP.Finance_DimPaymentUseCase AS
(
SELECT 
    uct.Name AS PaymentUseCaseType,
	uc.Name AS PaymentUseCase,
	map.DimFinancialTxTypeID
FROM [Mapping].[PaymentUseCaseToTxTypeMap] AS map
INNER JOIN 	Finance.DimPaymentUseCase AS uc ON
		map.DimPaymentUseCaseID = uc.DimPaymentUseCaseID
INNER JOIN Finance.DimPaymentUseCaseType AS uct ON
	uc.DimPaymentUseCaseTypeID = uct.DimPaymentUseCaseTypeID
)
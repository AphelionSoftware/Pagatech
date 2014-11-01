

CREATE VIEW [test].[PaymentUseCase]
AS
(

SELECT 
	map.PaymentUseCaseToTxTypeMapID,
	uct.Name AS PaymentUseCaseType,
	uc.Name AS PaymentUseCase,
	map.DimFinancialTxTypeID,
	map.FinancialTransactionTypeName
FROM	Finance.DimPaymentUseCase AS uc
INNER JOIN Finance.DimPaymentUseCaseType AS uct ON
	uc.DimPaymentUseCaseTypeID = uct.DimPaymentUseCaseTypeID
INNER JOIN Mapping.PaymentUseCaseToTxTypeMap AS map ON
	map.DimPaymentUseCaseID = uc.DimPaymentUseCaseID
)
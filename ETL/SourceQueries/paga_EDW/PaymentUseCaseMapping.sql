USE [Paga_EDW]
GO

--ALTER TABLE [Mapping].[PaymentUseCaseToTxTypeMap] DROP CONSTRAINT [FK_PaymentUseCaseToTxTypeMap_DimPaymentUseCaseID]
--GO

--ALTER TABLE [Mapping].[PaymentUseCaseToTxTypeMap] DROP CONSTRAINT [FK_PaymentUseCaseToTxTypeMap_DimFinancialTxTypeID]
--GO

/****** Object:  Table [Mapping].[PaymentUseCaseToTxTypeMap]    Script Date: 10/29/2014 12:58:36 PM ******/
DROP TABLE [Mapping].[PaymentUseCaseToTxTypeMap]
GO

/****** Object:  Table [Mapping].[PaymentUseCaseToTxTypeMap]    Script Date: 10/29/2014 12:58:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [Mapping].[PaymentUseCaseToTxTypeMap](
	[PaymentUseCaseToTxTypeMapID] [int] IDENTITY(1,1) NOT NULL,
	[DimPaymentUseCaseID] [int] NOT NULL,
	[DimFinancialTxTypeID] [int] NOT NULL,
	[FinancialTransactionTypeName] [varchar](255) NULL,
	[sys_ModifiedBy] [varchar](255) NOT NULL DEFAULT (suser_sname()),
	[sys_ModifiedOn] [datetime] NOT NULL DEFAULT (getdate()),
	[sys_CreatedBy] [varchar](255) NOT NULL DEFAULT (suser_sname()),
	[sys_CreatedOn] [datetime] NOT NULL DEFAULT (getdate()),
 CONSTRAINT [pk_DimPaymentUseCaseID] PRIMARY KEY CLUSTERED 
(
	[PaymentUseCaseToTxTypeMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING ON
GO

ALTER TABLE [Mapping].[PaymentUseCaseToTxTypeMap]  WITH CHECK ADD  CONSTRAINT [FK_PaymentUseCaseToTxTypeMap_DimFinancialTxTypeID] FOREIGN KEY([DimFinancialTxTypeID])
REFERENCES Classification.DimFinancialTransactionType ([DimFinancialTxTypeID])
GO

ALTER TABLE [Mapping].[PaymentUseCaseToTxTypeMap] CHECK CONSTRAINT [FK_PaymentUseCaseToTxTypeMap_DimFinancialTxTypeID]
GO

ALTER TABLE [Mapping].[PaymentUseCaseToTxTypeMap]  WITH CHECK ADD  CONSTRAINT [FK_PaymentUseCaseToTxTypeMap_DimPaymentUseCaseID] FOREIGN KEY([DimPaymentUseCaseID])
REFERENCES Finance.[DimPaymentUseCase] ([DimPaymentUseCaseID])
GO

ALTER TABLE [Mapping].[PaymentUseCaseToTxTypeMap] CHECK CONSTRAINT [FK_PaymentUseCaseToTxTypeMap_DimPaymentUseCaseID]
GO



INSERT INTO [Mapping].[PaymentUseCaseToTxTypeMap]
           ([DimPaymentUseCaseID]
           ,[DimFinancialTxTypeID]
           ,[FinancialTransactionTypeName]
          )

         
SELECT 
	filters.DimPaymentUseCaseID,Ftt.DimFinancialTxTypeID,filters.FinancialTypeID
FROM
(
	VALUES
			--cash-in ----DONE
		('USER_DEPOSIT_FROM_CARD',3), 
		('USER_DEPOSIT_FROM_CARD_FREE',3), 
		('PAGA_APPROVE_CASH_COLLECTION_DEPOSIT',3) ,
		('USER_DEPOSIT_FROM_BANK_ACCOUNT', 3),
		
		--Cash-out by customer --DONE
		('AGENT_BFS_ACCEPT_WITHDRAWAL', 2),
		('AGENT_DISPENSE_CASH_FOR_WITHDRAWAL', 2),
		('ORGANIZATION_WITHDRAWAL_MANUAL', 2),
		('PAGA_EXTRACT_PRE_PAID_SERVICE_REPAYMENT', 2),
		('PAGA_EXTRACT_BILL_PAY_FEES', 2),
		('PAGA_EXTRACT_LOAD_CASH_FEES',2) ,
		('PAGA_EXTRACT_MERCHANT_TRANSACTION_FEES',2),
		('PAGA_EXTRACT_PRE_PAID_SERVICE_REPAYMENT', 2),
		('PAGA_EXTRACT_PREMIUM_SMS_FEES', 2),
		('PAGA_EXTRACT_SELL_AIRTIME_FEES',2),
		('PAGA_EXTRACT_SEND_CASH_FEES', 2),
		('PAGA_EXTRACT_TRANSACTION_HISTORY_FEES', 2),
		('PAGA_EXTRACT_WITHDRAWAL_FEES', 2),
		('PAGA_PAY_THIRD_PARTY_PAYABLE', 2),
		('USER_WITHDRAW_CASH_ATM', 2),
		('PAGA_EXTRACT_ACCOUNT_BALANCE_FEES',2 ),
		
		--Cash-out by unregistered -- DONE
		('AGENT_DISPENSE_CASH_FOR_SEND_CASH',3),
		
		--Header for Electronic Personal Payments within MMO section
		-- P2P on-us -- DONE
		('AGENT_SEND_CASH_CUSTOMER_TO_CUSTOMER', 4),
		('AGENT_SEND_CASH_NONCUSTOMER_TO_CUSTOMER', 4),
		('CUSTOMER_SEND_CASH_TO_CUSTOMER',4),
	
			-- P2P to unregistered -- DONE
		('AGENT_SEND_CASH_CUSTOMER_TO_NONCUSTOMER',5),  
		('AGENT_SEND_CASH_NONCUSTOMER_TO_NONCUSTOMER', 5),
		('CUSTOMER_SEND_CASH_TO_NONCUSTOMER', 5),
		
			-- Header for Electronic non-Personal Payments within MMO section
		
		--G2P bulk batched payments into accounts -- DONE
	
		('BULK_PAY_SEND_CASH_TO_CUSTOMER', 6),
		('CUSTOMER_SEND_CASH_TO_CUSTOMER', 6),
		('BULK_PAY_SEND_CASH_TO_BANKACCOUNT', 6),
		('USER_SEND_CASH_TO_BANK_ACCOUNT', 6),

		--G2P bulk batched payments to unregistered -- DONE 
		('BULK_PAY_SEND_CASH_TO_NONCUSTOMER',7), 
		('CUSTOMER_SEND_CASH_TO_NONCUSTOMER',7),
		('BULK_PAY_SEND_CASH_TO_BANKACCOUNT', 7),
		('USER_SEND_CASH_TO_BANK_ACCOUNT', 7),

		--B2P bulk batched payments into accounts -- DONE
		('BULK_PAY_SEND_CASH_TO_CUSTOMER', 8),
		('CUSTOMER_SEND_CASH_TO_CUSTOMER', 8),
		('BULK_PAY_SEND_CASH_TO_BANKACCOUNT', 8),
		('USER_SEND_CASH_TO_BANK_ACCOUNT', 8),
		
		--B2P bulk batched payments to unregistered -- DONE
		('BULK_PAY_SEND_CASH_TO_NONCUSTOMER',9), 
		('CUSTOMER_SEND_CASH_TO_NONCUSTOMER',9),
		('BULK_PAY_SEND_CASH_TO_BANKACCOUNT',9),
		('USER_SEND_CASH_TO_BANK_ACCOUNT', 9),

		--Payment to a Bank account (Real-time cleared EFT out -- DONE
		('AGENT_DEPOSIT_TO_BANK_ACCOUNT', 11),
		('USER_SEND_CASH_TO_BANK_ACCOUNT', 11),
		
			-- Header for Electronic Payments incoming section
			--e-float purchases by agent -- DONE
		('USER_DEPOSIT_FROM_CARD', 15),
		('USER_DEPOSIT_FROM_BANK_ACCOUNT', 15),
		
		--e-float sales by agent -- DONE
		('AGENT_ACCEPT_DEPOSIT', 16),
		('AGENT_BFS_ACCEPT_DEPOSIT', 16),
		
		--e-float sales by agent to other agents -- DONE		
		('AGENT_ACCEPT_DEPOSIT', 17),
 		
			--Airtime purchase -- DONE
		('AGENT_SELL_AIRTIME_PRE_PAID', 18),
		('BULK_PAY_BUY_AIRTIME_PRE_PAID', 18),
		('CUSTOMER_BUY_AIRTIME_PRE_PAID', 18),
		
		--Bill pay -- DONE

		('AGENT_BILL_PAY', 19),
		('CUSTOMER_BILL_PAY', 19),
		('CUSTOMER_BILL_PAY_VIA_SERVICE_AGGREGATOR', 19),
		('MERCHANT_ACCEPT_CARD_PAYMENT_FREE', 19),
		('MERCHANT_CHARGE_CUSTOMER_CASH' ,19),
		--AND PAU.PagaAccountId NOT IN (SELECT PagaAccountId FROM #PrepaidServiceOrganizations)
		
		--Pre-paid electricity -- DONE
		--INNER JOIN #PrepaidServiceOrganizations PPS ON PAU.PagaAccountId = PPS.PagaAccountId --ONLY PREPAID ONES
		('AGENT_BILL_PAY', 20),
		('CUSTOMER_BILL_PAY', 20),
		('MERCHANT_ACCEPT_CARD_PAYMENT_FREE', 20),
		('MERCHANT_CHARGE_CUSTOMER_CASH',20),

		-- Header for Purchases from Merchant section
		--Purchase from merchant P2M -- DONE
		('AGENT_BILL_PAY', 21),
		('CUSTOMER_BILL_PAY', 21),
		('CUSTOMER_BILL_PAY_VIA_SERVICE_AGGREGATOR', 21),
		('MERCHANT_ACCEPT_CARD_PAYMENT_FREE', 21),
		('MERCHANT_CHARGE_CUSTOMER_CASH', 21),
		--AND PAU.PagaAccountId NOT IN (SELECT PagaAccountId FROM #PrepaidServiceOrganizations)

		-- Header for Foreign Remittances section
		--Foreign Remittances incoming -- DONE
		('USER_REMITTANCE_COLLECTION', 22)


)Filters(FinancialTypeID, DimPaymentUseCaseID)
INNER JOIN Classification.DimFinancialTransactionType AS ftt ON
	Filters.FinancialTypeID = ftt.SourceKey


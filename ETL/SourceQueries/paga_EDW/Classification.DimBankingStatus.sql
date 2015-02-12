USE [Paga_EDW]
GO
SET IDENTITY_INSERT [Classification].[DimBankingStatus] ON

INSERT INTO [Classification].[DimBankingStatus]
           ([DimBankingStatusID],[SourceKey]
           ,[Name]
          )
     VALUES
		(-1,'UNKNOWN','UNKNOWN'),
        (1,'FULLY_BANKED','FULLY_BANKED'),
		(2,'SEMI_BANKED',	'SEMI_BANKED'),
		(3,'UNBANKED',	'UNBANKED')
GO



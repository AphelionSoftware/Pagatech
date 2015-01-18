﻿CREATE TABLE [Finance].[DimBankAccount] (
    [DimBankAccountID]             INT             IDENTITY (1, 1) NOT NULL,
    [SourceKey]                    INT             NOT NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [DimBankID]                    INT             NOT NULL,
    [BankAccountLinkStatusType]    VARCHAR (255)   NOT NULL,
    [TextDesciption]               VARCHAR (1000)  NULL,
    [AccountHolderName]            VARCHAR (255)   NULL,
    [BranchName]                   VARCHAR (255)   NULL,
    [KYC_Rating]                   VARCHAR (30)    NULL,
    [MobilePhoneNumber]            VARCHAR (30)    NULL,
    [BankAccountLinkStatusComment] VARCHAR (1000)  NULL,
    [AccountNumber]                VARBINARY (256) NULL,
    [AccountAlias]                 VARCHAR (20)    NULL,
    [TransactionLimit]             DECIMAL (18, 2) NULL,
    [DurationLimit]                DECIMAL (18, 2) NULL,
    [DurationLimitSeconds]         INT             NULL,
    [IsEnabled]                    BIT             NULL,
    [AccountLinkIdentifier]        VARCHAR (30)    NULL,
    [SourceKeyHash]                BIGINT          NULL,
    [DeltaHash]                    BIGINT          NULL,
    [sys_ModifiedBy]               VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]               DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimBankAccountID] PRIMARY KEY CLUSTERED ([DimBankAccountID] ASC),
    CONSTRAINT [fk_DimBankAccount_DimBankID] FOREIGN KEY ([DimBankID]) REFERENCES [Finance].[DimBank] ([DimBankID])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimBankAccount_SourceKey]
    ON [Finance].[DimBankAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.BankAccount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'4', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2300', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'BankAccountId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	SourceKey , 	AccountAlias,  	AccountHolderName,  	BankAccountLinkStatusComment,  	BankAccountLinkStatusType = COALESCE(BankAccountLinkStatusType, ''UNKNOWN''),  	BranchName,  	DurationLimit,  	DurationLimitSeconds,  	KYC_Rating,  	Name,  	TransactionLimit,  	DimBankSourceKey 	 FROM  ( 	SELECT          AccountAlias= CONVERT(VARCHAR(20),[AccountAlias]),  		 AccountHolderName = CONVERT(VARCHAR(200),[AccountHolderName]),  		 BankAccountLinkStatusComment= CONVERT(VARCHAR(1000),[BankAccountLinkStatusComment]),  		 BankAccountLinkStatusType = [BankAccountLinkStatusTypeId],  		 BranchName = CONVERT(VARCHAR(200),[BranchName]),  		 DurationLimit = [DurationLimit],  		 DurationLimitSeconds=[DurationLimitSeconds],  		 KYC_Rating = [KYCId],  		 Name = CONVERT(VARCHAR(200),[AccountHolderName]),  		 SourceKey = [BankAccountId],  		 TransactionLimit =[TransactionLimit],  		 DimBankSourceKey = [BankId] 	FROM [dbo].[BankAccount] ) as base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';




CREATE TABLE [Finance].[DimBankAccount] (
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
    [sys_ModifiedBy]               VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]               DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                DATETIME        DEFAULT (getdate()) NOT NULL,
    [IsActive]                     BIT             DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]           BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]         CHAR (1)        DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimBankAccountID] PRIMARY KEY CLUSTERED ([DimBankAccountID] ASC),
    CONSTRAINT [fk_DimBankAccount_DimBankID] FOREIGN KEY ([DimBankID]) REFERENCES [Finance].[DimBank] ([DimBankID])
);


















GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimBankAccount_SourceKey]
    ON [Finance].[DimBankAccount]([SourceKey] ASC);


GO



GO



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
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2400', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';




GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'BankAccountId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, SYS_CHANGE_VERSION = ct.as_of_change_version, 	SourceKey , 	AccountAlias,  	AccountHolderName,  	BankAccountLinkStatusComment,  	BankAccountLinkStatusType = COALESCE(BankAccountLinkStatusType, ''UNKNOWN''),  	BranchName,  	DurationLimit,  	DurationLimitSeconds,  	KYC_Rating,  	Name,  	TransactionLimit,  	DimBankSourceKey 	 FROM  ( 	SELECT          AccountAlias= CONVERT(VARCHAR(20),[AccountAlias]),  		 AccountHolderName = CONVERT(VARCHAR(200),[AccountHolderName]),  		 BankAccountLinkStatusComment= CONVERT(VARCHAR(1000),[BankAccountLinkStatusComment]),  		 BankAccountLinkStatusType = [BankAccountLinkStatusTypeId],  		 BranchName = CONVERT(VARCHAR(200),[BranchName]),  		 DurationLimit = [DurationLimit],  		 DurationLimitSeconds=[DurationLimitSeconds],  		 KYC_Rating = [KYCId],  		 Name = CONVERT(VARCHAR(200),[AccountHolderName]),  		 SourceKey = [BankAccountId],  		 TransactionLimit =[TransactionLimit],  		 DimBankSourceKey = [BankId] 	FROM [dbo].[BankAccount] ) as base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';








GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET 
	edw.SourceKey = stg.SourceKey,edw.Name = stg.Name,edw.DimBankID = stg.DimBankID,edw.BankAccountLinkStatusType = stg.BankAccountLinkStatusType,edw.TextDesciption = stg.TextDesciption,edw.AccountHolderName = stg.AccountHolderName,edw.BranchName = stg.BranchName,edw.KYC_Rating = stg.KYC_Rating,edw.MobilePhoneNumber = stg.MobilePhoneNumber,edw.BankAccountLinkStatusComment = stg.BankAccountLinkStatusComment,edw.AccountNumber = stg.AccountNumber,edw.AccountAlias = stg.AccountAlias,edw.TransactionLimit = stg.TransactionLimit,edw.DurationLimit = stg.DurationLimit,edw.DurationLimitSeconds = stg.DurationLimitSeconds,edw.IsEnabled = stg.IsEnabled,edw.AccountLinkIdentifier = stg.AccountLinkIdentifier
	FROM Finance.DimBankAccount AS edw
	INNER JOIN Paga_Staging.Updates.Finance_DimBankAccount AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';


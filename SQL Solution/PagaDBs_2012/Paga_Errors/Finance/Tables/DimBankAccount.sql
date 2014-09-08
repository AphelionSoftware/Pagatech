CREATE TABLE [Finance].[DimBankAccount] (
    [DimBankAccountID]             INT             NOT NULL,
    [SourceKey]                    VARCHAR (255)   NOT NULL,
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
    [SourceKeyHash]                BIGINT          NOT NULL,
    [DeltaHash]                    BIGINT          NOT NULL,
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
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountLinkIdentifier', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'AccountLinkIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'IsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DurationLimitSeconds', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'DurationLimitSeconds';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DurationLimit', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'DurationLimit';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TransactionLimit', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'TransactionLimit';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountAlias', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'AccountAlias';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankAccountLinkStatusComment', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'BankAccountLinkStatusComment';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MobilePhoneNumber', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'MobilePhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'KYC_Rating', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'KYC_Rating';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BranchName', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'BranchName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountHolderName', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'AccountHolderName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'TextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankAccountLinkStatusType', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'BankAccountLinkStatusType';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBankID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'DimBankID';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.BankAccount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'BankAccountId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	AccountAlias, 
	AccountHolderName, 
	AccountLinkIdentifier, 
	BankAccountLinkStatusComment, 
	BankAccountLinkStatusType = COALESCE(BankAccountLinkStatusType, ''UNKNOWN''), 
	BranchName, 
	DurationLimit, 
	DurationLimitSeconds, 
	KYC_Rating, 
	MobilePhoneNumber, 
	Name, 
	TransactionLimit, 
	DimBankSourceKey,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
FROM 
(
	SELECT
         AccountAlias= CONVERT(VARCHAR(20),[AccountAlias]), 
		 AccountHolderName = CONVERT(VARCHAR(200),[AccountHolderName]), 
		 AccountLinkIdentifier = [AccountLinkIdentifier], 
		 BankAccountLinkStatusComment= CONVERT(VARCHAR(1000),[BankAccountLinkStatusComment]), 
		 BankAccountLinkStatusType = [BankAccountLinkStatusTypeId], 
		 BranchName = CONVERT(VARCHAR(200),[BranchName]), 
		 DurationLimit = [DurationLimit], 
		 DurationLimitSeconds=[DurationLimitSeconds], 
		 KYC_Rating = [KYCId], 
		 MobilePhoneNumber = CONVERT(VARCHAR(30),[MobilePhoneNumber]), 
		 Name = CONVERT(VARCHAR(200),[AccountHolderName]), 
		 SourceKey = [BankAccountId], 
		 TransactionLimit =[TransactionLimit], 
		 DimBankSourceKey = [BankId]
	FROM [dbo].[BankAccount]
) as base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimBankAccount';


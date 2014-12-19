CREATE TABLE [Staging].[DimBank] (
    [DimBankID]                INT           NULL,
    [BankAccountLinkType]      VARCHAR (255) NOT NULL,
    [DeltaHash]                BIGINT        NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [SourceKeyHash]            BIGINT        NULL,
    [SupportsCredit]           BIT           NULL,
    [SupportsDebit]            BIT           NULL,
    [DimOrganizationSourceKey] VARCHAR (255) NOT NULL
);


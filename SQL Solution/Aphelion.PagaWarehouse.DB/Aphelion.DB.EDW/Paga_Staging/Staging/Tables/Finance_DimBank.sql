CREATE TABLE [Staging].[Finance_DimBank] (
    [DimBankID]                INT           NULL,
    [BankAccountLinkType]      VARCHAR (255) NOT NULL,
    [DeltaHash]                BIGINT        NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [SourceKey]                INT           NOT NULL,
    [SourceKeyHash]            BIGINT        NULL,
    [SupportsCredit]           BIT           NULL,
    [SupportsDebit]            BIT           NULL,
    [DimOrganizationSourceKey] INT           NOT NULL,
    [SYS_CHANGE_OPERATION]     CHAR (1)      DEFAULT ('I') NOT NULL
);




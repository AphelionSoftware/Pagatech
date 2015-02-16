CREATE TABLE [Updates].[Finance_DimBank] (
    [SourceKey]           INT           NOT NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [BankAccountLinkType] VARCHAR (255) NOT NULL,
    [DimOrganizationID]   INT           NOT NULL,
    [SupportsDebit]       BIT           NULL,
    [SupportsCredit]      BIT           NULL
);


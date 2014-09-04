CREATE TABLE [Staging].[Finance_DimBank] (
    [SourceKey]             VARCHAR (255) NOT NULL,
    [Name]                  VARCHAR (255) NOT NULL,
    [Code]                  VARCHAR (50)  NOT NULL,
    [BankAccountLinkType]   VARCHAR (255) NOT NULL,
    [OrganizationSourceKey] VARCHAR (255) NOT NULL,
    [SupportsDebit]         BIT           NULL,
    [SupportsCredit]        BIT           NULL,
    [change_operation]      CHAR (1)      NULL
);






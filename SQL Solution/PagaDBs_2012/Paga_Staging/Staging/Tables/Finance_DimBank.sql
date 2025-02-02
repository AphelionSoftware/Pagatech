﻿CREATE TABLE [Staging].[Finance_DimBank] (
    [SourceKey]             VARCHAR (255) NOT NULL,
    [Name]                  VARCHAR (255) NOT NULL,
    [Code]                  VARCHAR (50)  NOT NULL,
    [BankAccountLinkType]   VARCHAR (255) NOT NULL,
    [OrganizationSourceKey] INT           NOT NULL,
    [SupportsDebit]         BIT           NULL,
    [SupportsCredit]        BIT           NULL
);


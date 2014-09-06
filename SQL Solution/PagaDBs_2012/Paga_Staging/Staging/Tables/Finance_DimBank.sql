﻿CREATE TABLE [Staging].[Finance_DimBank] (
    [BankAccountLinkType]      VARCHAR (255) NOT NULL,
    [Code]                     VARCHAR (50)  NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [DimOrganizationSourceKey] VARCHAR (255) NOT NULL,
    [change_operation]         CHAR (1)      DEFAULT ((1)) NOT NULL
);








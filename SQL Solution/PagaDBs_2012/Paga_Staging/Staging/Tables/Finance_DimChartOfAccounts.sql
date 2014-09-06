﻿CREATE TABLE [Staging].[Finance_DimChartOfAccounts] (
    [DimChartOfAccountsID] INT           NULL,
    [Code]                 VARCHAR (50)  NOT NULL,
    [GLCodeRange]          VARCHAR (255) NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [change_operation]     CHAR (1)      DEFAULT ((1)) NOT NULL
);






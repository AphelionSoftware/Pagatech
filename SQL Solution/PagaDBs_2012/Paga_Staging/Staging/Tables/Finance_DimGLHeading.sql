﻿CREATE TABLE [Staging].[Finance_DimGLHeading] (
    [SourceKey]                VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [Code]                     VARCHAR (50)  NOT NULL,
    [ChartOfAccountsSourceKey] INT           NOT NULL,
    [GLCodeRange]              VARCHAR (255) NULL
);


﻿CREATE TABLE [Staging].[Finance_DimFinancialAccountType] (
    [SourceKey]       VARCHAR (255)  NOT NULL,
    [Name]            VARCHAR (255)  NOT NULL,
    [Code]            VARCHAR (50)   NOT NULL,
    [Description]     VARCHAR (1000) NULL,
    [GLCodeSourceKey] INT            NOT NULL
);




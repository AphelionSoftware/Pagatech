﻿CREATE TABLE [Staging].[Finance_DimGLCodeGroup] (
    [GLCodeRange]                 VARCHAR (255) NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [SourceKey]                   VARCHAR (255) NOT NULL,
    [DimChartOfAccountsSourceKey] VARCHAR (255) NOT NULL,
    [change_operation]            CHAR (1)      DEFAULT ((1)) NOT NULL
);










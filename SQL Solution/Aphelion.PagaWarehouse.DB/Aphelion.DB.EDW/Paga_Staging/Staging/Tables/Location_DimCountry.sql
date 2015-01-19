﻿CREATE TABLE [Staging].[Location_DimCountry] (
    [DimCountryID]         INT           NULL,
    [Code]                 VARCHAR (50)  NOT NULL,
    [DeltaHash]            BIGINT        NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [SourceKeyHash]        BIGINT        NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




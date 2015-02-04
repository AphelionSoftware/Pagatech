﻿CREATE TABLE [Staging].[Location_DimCity] (
    [Name]                            VARCHAR (255) NOT NULL,
    [PostalCode]                      INT           NOT NULL,
    [SourceKey]                       INT           NOT NULL,
    [DimLocalGovernmentAreaSourceKey] INT           NOT NULL,
    [SYS_CHANGE_VERSION]              BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]            CHAR (1)      DEFAULT ('I') NOT NULL
);


















GO



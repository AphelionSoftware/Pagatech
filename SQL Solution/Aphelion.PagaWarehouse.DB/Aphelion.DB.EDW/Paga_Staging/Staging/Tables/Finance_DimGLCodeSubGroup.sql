﻿CREATE TABLE [Staging].[Finance_DimGLCodeSubGroup] (
    [DimGLCodeSubGroupID]     INT           NULL,
    [DeltaHash]               BIGINT        NULL,
    [GLCodeRange]             VARCHAR (255) NULL,
    [Name]                    VARCHAR (255) NOT NULL,
    [SourceKey]               INT           NOT NULL,
    [SourceKeyHash]           BIGINT        NULL,
    [DimGLCodeGroupSourceKey] INT           NOT NULL
);


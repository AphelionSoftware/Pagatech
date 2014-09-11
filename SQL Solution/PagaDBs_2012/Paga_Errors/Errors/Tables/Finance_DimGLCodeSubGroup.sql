﻿CREATE TABLE [Errors].[Finance_DimGLCodeSubGroup] (
    [QueueID]                 INT           NOT NULL,
    [SSISErrorCode]           INT           NOT NULL,
    [SSISErrorColumn]         INT           NOT NULL,
    [PackageName]             VARCHAR (255) NOT NULL,
    [ErrorType]               VARCHAR (255) NOT NULL,
    [change_operation]        CHAR (1)      NOT NULL,
    [DimGLCodeGroupSourceKey] VARCHAR (255) NOT NULL,
    [GLCodeRange]             VARCHAR (255) NULL,
    [Name]                    VARCHAR (255) NOT NULL,
    [SourceKey]               VARCHAR (255) NOT NULL
);


﻿CREATE TABLE [Errors].[Finance_DimGLCode] (
    [QueueID]                 INT            NOT NULL,
    [SSISErrorCode]           INT            NOT NULL,
    [SSISErrorColumn]         INT            NOT NULL,
    [PackageName]             VARCHAR (255)  NOT NULL,
    [ErrorType]               VARCHAR (255)  NOT NULL,
    [SourceKey]               INT            NOT NULL,
    [Name]                    VARCHAR (255)  NOT NULL,
    [GLCodeSubGroupSourceKey] INT            NOT NULL,
    [GLCode]                  VARCHAR (255)  NULL,
    [TextDesciption]          VARCHAR (1000) NULL,
    [IsNormalDebit]           BIT            NULL,
    [SYS_CHANGE_VERSION]      BIGINT         NOT NULL,
    [SYS_CHANGE_OPERATION]    CHAR (1)       NOT NULL
);


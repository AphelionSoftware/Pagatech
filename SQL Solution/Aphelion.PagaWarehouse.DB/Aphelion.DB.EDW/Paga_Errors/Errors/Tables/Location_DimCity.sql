CREATE TABLE [Errors].[Location_DimCity] (
    [QueueID]                         INT           NOT NULL,
    [SSISErrorCode]                   INT           NOT NULL,
    [SSISErrorColumn]                 INT           NOT NULL,
    [PackageName]                     VARCHAR (255) NOT NULL,
    [ErrorType]                       VARCHAR (255) NOT NULL,
    [DimLocalGovernmentAreaSourceKey] INT           NOT NULL,
    [Name]                            VARCHAR (255) NOT NULL,
    [PostalCode]                      INT           NOT NULL,
    [SourceKey]                       INT           NOT NULL,
    [SYS_CHANGE_OPERATION]            CHAR (1)      NOT NULL,
    [SYS_CHANGE_VERSION]              BIGINT        NOT NULL
);








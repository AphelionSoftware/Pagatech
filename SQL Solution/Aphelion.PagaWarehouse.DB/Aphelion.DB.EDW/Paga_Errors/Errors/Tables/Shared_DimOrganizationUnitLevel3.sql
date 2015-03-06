CREATE TABLE [Errors].[Shared_DimOrganizationUnitLevel3] (
    [QueueID]                         INT           NOT NULL,
    [SSISErrorCode]                   INT           NOT NULL,
    [SSISErrorColumn]                 INT           NOT NULL,
    [PackageName]                     VARCHAR (255) NOT NULL,
    [ErrorType]                       VARCHAR (255) NOT NULL,
    [SourceKey]                       INT           NOT NULL,
    [Name]                            VARCHAR (255) NOT NULL,
    [OrganizationUnitLevel2SourceKey] INT           NOT NULL,
    [OrganizationUnitTypeSourceKey]   INT           NOT NULL,
    [IdentificationNumber]            VARCHAR (20)  NULL,
    [SYS_CHANGE_VERSION]              BIGINT        NOT NULL,
    [SYS_CHANGE_OPERATION]            CHAR (1)      NOT NULL
);


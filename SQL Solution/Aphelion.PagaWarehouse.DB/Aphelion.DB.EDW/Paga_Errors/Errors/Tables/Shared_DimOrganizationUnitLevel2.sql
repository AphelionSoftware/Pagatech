CREATE TABLE [Errors].[Shared_DimOrganizationUnitLevel2] (
    [QueueID]                            INT           NOT NULL,
    [SSISErrorCode]                      INT           NOT NULL,
    [SSISErrorColumn]                    INT           NOT NULL,
    [PackageName]                        VARCHAR (255) NOT NULL,
    [ErrorType]                          VARCHAR (255) NOT NULL,
    [DimOrganizationUnitLevel1SourceKey] INT           NOT NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL,
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          INT           NOT NULL,
    [SYS_CHANGE_OPERATION]               CHAR (1)      NOT NULL,
    [SYS_CHANGE_VERSION]                 BIGINT        NOT NULL
);








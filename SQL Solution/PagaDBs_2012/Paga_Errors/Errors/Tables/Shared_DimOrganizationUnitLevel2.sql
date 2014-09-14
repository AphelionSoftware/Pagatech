CREATE TABLE [Errors].[Shared_DimOrganizationUnitLevel2] (
    [QueueID]                            INT           NOT NULL,
    [SSISErrorCode]                      INT           NOT NULL,
    [SSISErrorColumn]                    INT           NOT NULL,
    [PackageName]                        VARCHAR (255) NOT NULL,
    [ErrorType]                          VARCHAR (255) NOT NULL,
    [change_operation]                   CHAR (1)      NOT NULL,
    [DimOrganizationUnitLevel1SourceKey] VARCHAR (255) NOT NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL,
    [DimUserSourceKey]                   VARCHAR (255) NOT NULL,
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          VARCHAR (255) NOT NULL
);




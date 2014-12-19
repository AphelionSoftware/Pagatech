CREATE TABLE [Errors].[Shared_DimOrganizationUnitLevel3] (
    [QueueID]                            INT           NOT NULL,
    [SSISErrorCode]                      INT           NOT NULL,
    [SSISErrorColumn]                    INT           NOT NULL,
    [PackageName]                        VARCHAR (255) NOT NULL,
    [ErrorType]                          VARCHAR (255) NOT NULL,
    [DeltaHash]                          BIGINT        NULL,
    [DimOrganizationUnitLevel2SourceKey] VARCHAR (255) NOT NULL,
    [DimOrganizationUnitLevel3ID]        INT           NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL,
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          VARCHAR (255) NOT NULL,
    [SourceKeyHash]                      BIGINT        NULL
);


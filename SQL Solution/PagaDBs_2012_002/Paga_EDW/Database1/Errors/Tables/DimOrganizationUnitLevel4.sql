CREATE TABLE [Errors].[DimOrganizationUnitLevel4] (
    [QueueID]                            INT           NOT NULL,
    [SSISErrorCode]                      INT           NOT NULL,
    [SSISErrorColumn]                    INT           NOT NULL,
    [PackageName]                        VARCHAR (255) NOT NULL,
    [ErrorType]                          VARCHAR (255) NOT NULL,
    [DimOrganizationUnitLevel4ID]        INT           NULL,
    [DeltaHash]                          BIGINT        NULL,
    [DimOrganizationUnitLevel3SourceKey] VARCHAR (255) NOT NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL,
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          VARCHAR (255) NOT NULL,
    [SourceKeyHash]                      BIGINT        NULL,
    [DimOrganizationUnitLevel3ID]        INT           NULL,
    [DimOrganizationUnitTypeID]          INT           NULL
);


﻿CREATE TABLE [Errors].[Shared_DimOrganizationUnitLevel2] (
    [QueueID]                            INT           NOT NULL,
    [SSISErrorCode]                      INT           NOT NULL,
    [SSISErrorColumn]                    INT           NOT NULL,
    [PackageName]                        VARCHAR (255) NOT NULL,
    [ErrorType]                          VARCHAR (255) NOT NULL,
    [DeltaHash]                          BIGINT        NULL,
    [DimOrganizationUnitLevel1SourceKey] INT           NOT NULL,
    [DimOrganizationUnitLevel2ID]        INT           NULL,
    [DimOrganizationUnitTypeSourceKey]   VARCHAR (255) NOT NULL,
    [IdentificationNumber]               VARCHAR (20)  NULL,
    [Name]                               VARCHAR (255) NOT NULL,
    [SourceKey]                          INT           NOT NULL,
    [SourceKeyHash]                      BIGINT        NULL
);




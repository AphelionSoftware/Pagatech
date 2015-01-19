CREATE TABLE [Staging].[Shared_DimOrganizationUnitLevel1] (
    [DimOrganizationUnitLevel1ID]      INT           NULL,
    [DeltaHash]                        BIGINT        NULL,
    [IdentificationNumber]             VARCHAR (20)  NULL,
    [Name]                             VARCHAR (255) NOT NULL,
    [SourceKey]                        INT           NOT NULL,
    [SourceKeyHash]                    BIGINT        NULL,
    [DimOrganizationSourceKey]         INT           NOT NULL,
    [DimOrganizationUnitTypeSourceKey] VARCHAR (255) NOT NULL,
    [SYS_CHANGE_OPERATION]             CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]               BIGINT        DEFAULT ((0)) NOT NULL
);








GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_DimOrganizationUnitLevel1]
    ON [Staging].[Shared_DimOrganizationUnitLevel1]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);


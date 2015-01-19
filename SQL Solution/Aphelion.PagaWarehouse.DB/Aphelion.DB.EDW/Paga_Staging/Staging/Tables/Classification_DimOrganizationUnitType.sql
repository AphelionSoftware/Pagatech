CREATE TABLE [Staging].[Classification_DimOrganizationUnitType] (
    [DimOrganizationUnitTypeID] INT           NULL,
    [DeltaHash]                 BIGINT        NULL,
    [Name]                      VARCHAR (255) NOT NULL,
    [SourceKey]                 VARCHAR (255) NOT NULL,
    [SourceKeyHash]             BIGINT        NULL,
    [SYS_CHANGE_OPERATION]      CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]        BIGINT        DEFAULT ((0)) NOT NULL
);








GO
CREATE UNIQUE CLUSTERED INDEX [ix_Classification_DimOrganizationUnitType]
    ON [Staging].[Classification_DimOrganizationUnitType]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);


CREATE TABLE [Staging].[Classification_DimOrganizationVerificationStatus] (
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);














GO
CREATE UNIQUE CLUSTERED INDEX [ix_Classification_DimOrganizationVerificationStatus]
    ON [Staging].[Classification_DimOrganizationVerificationStatus]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);


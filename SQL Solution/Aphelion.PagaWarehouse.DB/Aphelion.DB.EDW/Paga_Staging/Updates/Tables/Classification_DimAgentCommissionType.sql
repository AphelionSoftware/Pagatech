CREATE TABLE [Updates].[Classification_DimAgentCommissionType] (
    [SourceKey]            VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Classification_DimAgentCommissionType_SourceKey]
    ON [Updates].[Classification_DimAgentCommissionType]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);


CREATE TABLE [Updates].[Location_DimCity] (
    [SourceKey]                INT           NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [DimLocalGovernmentAreaID] INT           NOT NULL,
    [PostalCode]               INT           NOT NULL,
    [SYS_CHANGE_VERSION]       BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]     CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Location_DimCity_SourceKey]
    ON [Updates].[Location_DimCity]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);


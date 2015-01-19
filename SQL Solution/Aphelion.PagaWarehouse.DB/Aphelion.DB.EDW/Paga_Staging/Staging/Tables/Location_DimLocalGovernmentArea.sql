CREATE TABLE [Staging].[Location_DimLocalGovernmentArea] (
    [DimLocalGovernmentAreaID] INT           NULL,
    [Code]                     VARCHAR (50)  NOT NULL,
    [DeltaHash]                BIGINT        NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [SourceKey]                INT           NOT NULL,
    [SourceKeyHash]            BIGINT        NULL,
    [DimRegionSourceKey]       INT           NOT NULL,
    [SYS_CHANGE_OPERATION]     CHAR (1)      DEFAULT ('I') NOT NULL
);




CREATE TABLE [Staging].[DimProcessType] (
    [DimProcessTypeID]             INT            NULL,
    [DeltaHash]                    BIGINT         NULL,
    [DescriptionText]              VARCHAR (1000) NULL,
    [Name]                         VARCHAR (255)  NOT NULL,
    [SourceKey]                    VARCHAR (255)  NOT NULL,
    [SourceKeyHash]                BIGINT         NULL,
    [DimProcessTypeGroupSourceKey] VARCHAR (255)  NOT NULL
);


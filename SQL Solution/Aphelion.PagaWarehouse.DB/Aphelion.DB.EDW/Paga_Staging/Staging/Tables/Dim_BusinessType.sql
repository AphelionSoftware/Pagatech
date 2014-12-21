CREATE TABLE [Staging].[Dim_BusinessType] (
    [DeltaHash]         BIGINT        NULL,
    [DescriptionText]   VARCHAR (255) NULL,
    [DimBusinessTypeID] INT           NULL,
    [Name]              VARCHAR (255) NULL,
    [SourceKey]         VARCHAR (255) NOT NULL,
    [SourceKeyHash]     BIGINT        NULL
);


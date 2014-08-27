CREATE TABLE [Staging].[DimOrganizationUnitLevel1] (
    [DimOrganizationUnitLevel1ID] INT           NULL,
    [Code]                        VARCHAR (50)  NOT NULL,
    [DeltaHash]                   BIGINT        NOT NULL,
    [DimOrganizationID]           INT           NOT NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [SourceKey]                   VARCHAR (255) NOT NULL,
    [SourceKeyHash]               BIGINT        NOT NULL
);


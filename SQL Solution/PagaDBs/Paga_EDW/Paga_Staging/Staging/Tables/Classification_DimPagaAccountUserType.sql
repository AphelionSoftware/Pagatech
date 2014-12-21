CREATE TABLE [Staging].[Classification_DimPagaAccountUserType] (
    [DimPagaAccountUserTypeID] INT           NULL,
    [DeltaHash]                BIGINT        NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [SourceKeyHash]            BIGINT        NULL
);


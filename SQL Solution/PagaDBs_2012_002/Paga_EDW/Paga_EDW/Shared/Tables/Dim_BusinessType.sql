CREATE TABLE [Shared].[DimBusinessType] (
    [DimBusinessTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]         VARCHAR (255) NOT NULL,
    [Name]              VARCHAR (255) NULL,
    [DescriptionText]   VARCHAR (255) NULL,
    [SourceKeyHash]     BIGINT        NULL,
    [DeltaHash]         BIGINT        NULL,
    [sys_CreatedBy]     VARCHAR (255) NOT NULL,
    [sys_CreatedOn]     DATETIME      NOT NULL,
    [sys_ModifiedBy]    VARCHAR (255) NOT NULL,
    [sys_ModifiedOn]    DATETIME      NOT NULL,
    CONSTRAINT [pk_DimBusinessType] PRIMARY KEY CLUSTERED ([DimBusinessTypeID] ASC)
);


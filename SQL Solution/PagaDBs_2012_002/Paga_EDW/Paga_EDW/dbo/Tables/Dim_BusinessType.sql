CREATE TABLE [dbo].[Dim_BusinessType] (
    [DimBusinessTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]         VARCHAR (255) NOT NULL,
    [Name]              VARCHAR (255) NULL,
    [DescriptionText]   VARCHAR (255) NULL,
    [SourceKeyHash]     BIGINT        NULL,
    [DeltaHash]         BIGINT        NULL,
    [sys_CreatedBy]     VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]     DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]    VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]    DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimBusinessType] PRIMARY KEY CLUSTERED ([DimBusinessTypeID] ASC)
);


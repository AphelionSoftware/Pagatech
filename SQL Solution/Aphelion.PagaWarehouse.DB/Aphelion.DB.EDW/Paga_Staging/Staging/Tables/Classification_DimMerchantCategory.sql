CREATE TABLE [Staging].[Classification_DimMerchantCategory] (
    [DimMerchantCategoryID] INT           NULL,
    [DeltaHash]             BIGINT        NULL,
    [Name]                  VARCHAR (255) NOT NULL,
    [SourceKey]             VARCHAR (255) NOT NULL,
    [SourceKeyHash]         BIGINT        NULL,
    [SYS_CHANGE_OPERATION]  CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]    BIGINT        DEFAULT ((0)) NOT NULL
);










GO
CREATE UNIQUE CLUSTERED INDEX [ix_Classification_DimMerchantCategory]
    ON [Staging].[Classification_DimMerchantCategory]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);






﻿CREATE TABLE [Classification].[DimMerchantCategory] (
    [DimMerchantCategoryID] INT      IDENTITY(1,1)     NOT NULL,
    [SourceKey]             VARCHAR (255) NOT NULL,
    [Name]                  VARCHAR (255) NOT NULL,
    [SourceKeyHash]         BIGINT        NOT NULL,
    [DeltaHash]             BIGINT        NOT NULL,
    [sys_ModifiedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]         VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimMerchantCategoryID] PRIMARY KEY CLUSTERED ([DimMerchantCategoryID] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimMerchantCategory_SourceKey]
    ON [Classification].[DimMerchantCategory]([SourceKey] ASC);

GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.MerchantCategory', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimMerchantCategory';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'MerchantCategoryId', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimMerchantCategory';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.name,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
FROM 
(
	SELECT
		MerchantCategoryId AS SourceKey, 
		CONVERT(VARCHAR(255),Description) AS Name
	FROM dbo.MerchantCategory
) as base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimMerchantCategory';


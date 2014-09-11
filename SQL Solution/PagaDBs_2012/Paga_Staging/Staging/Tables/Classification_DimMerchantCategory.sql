CREATE TABLE [Staging].[Classification_DimMerchantCategory]
(
    [SourceKey]         VARCHAR (255) NOT NULL,
    [Name]              VARCHAR (255) NOT NULL,
	[change_operation] CHAR (1)      DEFAULT ((1)) NOT NULL
);
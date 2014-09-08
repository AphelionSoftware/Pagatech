CREATE TABLE [Activity].[DimChannel] (
    [DimChannelID]   INT            NOT NULL,
    [SourceKey]      VARCHAR (255)  NOT NULL,
    [Name]           VARCHAR (255)  NOT NULL,
    [TextDesciption] VARCHAR (1000) NULL,
    [SourceKeyHash]  BIGINT         NOT NULL,
    [DeltaHash]      BIGINT         NOT NULL,
    [sys_ModifiedBy] VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimChannelID] PRIMARY KEY CLUSTERED ([DimChannelID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimChannel_SourceKey]
    ON [Activity].[DimChannel]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'TextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'DimChannel';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	Name, 
	TextDescription,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
FROM 
(
	SELECT 
		SourceKey = pc.ProcessChannelId,
		Name = pc.ProcessChannelId, 
		TextDescription = pc.[Description]
	FROM dbo.ProcessChannel AS pc
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'DimChannel';


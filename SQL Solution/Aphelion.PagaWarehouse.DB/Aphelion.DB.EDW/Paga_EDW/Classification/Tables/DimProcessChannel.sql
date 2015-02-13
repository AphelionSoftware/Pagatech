CREATE TABLE [Classification].[DimProcessChannel] (
    [DimProcessChannelID] INT            IDENTITY (1, 1) NOT NULL,
    [SourceKey]           VARCHAR (255)  NOT NULL,
    [Name]                VARCHAR (255)  NOT NULL,
    [TextDesciption]      VARCHAR (1000) NULL,
    [sys_ModifiedBy]      VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]      DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]       VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]       DATETIME       DEFAULT (getdate()) NOT NULL,
    [IsActive]            BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_DimChannelID] PRIMARY KEY CLUSTERED ([DimProcessChannelID] ASC)
);










GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimChannel_SourceKey]
    ON [Classification].[DimProcessChannel]([SourceKey] ASC);


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessChannel', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessChannel', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.ProcessChannel', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessChannel';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessChannel';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessChannel';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessChannel';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'ProcessChannelID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessChannel';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, SYS_CHANGE_VERSION = ct.as_of_change_version,SourceKey, 	Name,  	TextDescription FROM  ( 	SELECT  		SourceKey = pc.ProcessChannelId, 		Name = pc.ProcessChannelId,  		TextDescription = pc.[Description] 	FROM dbo.ProcessChannel AS pc ) AS base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessChannel';






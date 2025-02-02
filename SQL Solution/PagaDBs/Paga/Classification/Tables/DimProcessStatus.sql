﻿CREATE TABLE [Classification].[DimProcessStatus] (
    [DimProcessStatusID] INT           NOT NULL,
    [SourceKey]          VARCHAR (255) NOT NULL,
    [Name]               VARCHAR (255) NOT NULL,
    [SourceKeyHash]      BIGINT        NOT NULL,
    [DeltaHash]          BIGINT        NOT NULL,
    [sys_ModifiedBy]     VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]     DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]      VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]      DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimProcessStatusID] PRIMARY KEY CLUSTERED ([DimProcessStatusID] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimProcessStatus_SourceKey]
    ON [Classification].[DimProcessStatus]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DeltaHash';


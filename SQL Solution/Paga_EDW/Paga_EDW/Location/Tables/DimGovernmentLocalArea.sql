﻿CREATE TABLE [Location].[DimGovernmentLocalArea] (
    [DimGovernmentLocalAreaID] INT           NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [Code]                     VARCHAR (50)  NOT NULL,
    [SourceKeyHash]            BIGINT        NOT NULL,
    [DeltaHash]                BIGINT        NOT NULL,
    [sys_ModifiedBy]           VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]            VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]            DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimGovernmentLocalAreaID] PRIMARY KEY CLUSTERED ([DimGovernmentLocalAreaID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGovernmentLocalArea_SourceKey]
    ON [Location].[DimGovernmentLocalArea]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'SourceKey';


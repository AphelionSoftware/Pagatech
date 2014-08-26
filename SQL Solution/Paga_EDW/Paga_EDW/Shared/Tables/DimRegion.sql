CREATE TABLE [Shared].[DimRegion] (
    [DimRegionID]   INT           NOT NULL,
    [SourceKey]     VARCHAR (255) NOT NULL,
    [Name]          VARCHAR (255) NOT NULL,
    [Code]          VARCHAR (50)  NOT NULL,
    [SourceKeyHash] BIGINT        NOT NULL,
    [DeltaHash]     BIGINT        NOT NULL,
    [sysModifiedBy] VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sysModifiedOn] DATETIME      DEFAULT (getdate()) NOT NULL,
    [sysCreatedBy]  VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sysCreatedOn]  DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimRegionID] PRIMARY KEY CLUSTERED ([DimRegionID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimRegion_SourceKey]
    ON [Shared].[DimRegion]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'DeltaHash';


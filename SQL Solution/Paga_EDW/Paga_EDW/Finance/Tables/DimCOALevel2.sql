CREATE TABLE [Finance].[DimCOALevel2] (
    [DimCOALevel2ID] INT           NOT NULL,
    [SourceKey]      VARCHAR (255) NOT NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [DimCOALevel1ID] INT           NOT NULL,
    [GLCodeRange]    VARCHAR (255) NULL,
    [SourceKeyHash]  BIGINT        NOT NULL,
    [DeltaHash]      BIGINT        NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimCOALevel2ID] PRIMARY KEY CLUSTERED ([DimCOALevel2ID] ASC),
    CONSTRAINT [uc_DimCOALevel2_DimCOALevel1ID] UNIQUE NONCLUSTERED ([DimCOALevel1ID] ASC),
    CONSTRAINT [uc_DimCOALevel2_SourceKey] UNIQUE NONCLUSTERED ([SourceKey] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimCOALevel2_SourceKey]
    ON [Finance].[DimCOALevel2]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCOALevel1ID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'DimCOALevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'DeltaHash';


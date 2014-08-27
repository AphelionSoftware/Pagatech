CREATE TABLE [Finance].[DimCOALevel4] (
    [DimCOALevel4ID] INT            NOT NULL,
    [SourceKey]      VARCHAR (255)  NOT NULL,
    [Name]           VARCHAR (255)  NOT NULL,
    [Code]           VARCHAR (50)   NOT NULL,
    [DimCOALevel3ID] INT            NOT NULL,
    [GLCode]         VARCHAR (255)  NULL,
    [Description]    VARCHAR (1000) NULL,
    [IsNormalDebit]  BIT            NULL,
    [SourceKeyHash]  BIGINT         NOT NULL,
    [DeltaHash]      BIGINT         NOT NULL,
    [sys_ModifiedBy] VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimCOALevel4ID] PRIMARY KEY CLUSTERED ([DimCOALevel4ID] ASC),
    CONSTRAINT [uc_DimCOALevel4_DimCOALevel3ID] UNIQUE NONCLUSTERED ([DimCOALevel3ID] ASC),
    CONSTRAINT [uc_DimCOALevel4_SourceKey] UNIQUE NONCLUSTERED ([SourceKey] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimCOALevel4_SourceKey]
    ON [Finance].[DimCOALevel4]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCOALevel3ID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'DimCOALevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'GLCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'IsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'DeltaHash';


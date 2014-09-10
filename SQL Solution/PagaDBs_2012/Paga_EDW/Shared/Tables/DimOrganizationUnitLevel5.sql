CREATE TABLE [Shared].[DimOrganizationUnitLevel5] (
    [DimOrganizationUnitLevel5ID] INT           NOT NULL,
    [SourceKey]                   VARCHAR (255) NOT NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [DimOrganizationUnitLevel4ID] INT           NOT NULL,
    [DimOrganizationUnitTypeID]   INT           NOT NULL,
    [DimUserID]                 INT           NOT NULL,
    [IdentificationNumber]        VARCHAR (20)  NULL,
    [SourceKeyHash]               BIGINT        NOT NULL,
    [DeltaHash]                   BIGINT        NOT NULL,
    [sys_ModifiedBy]              VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]              DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]               VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]               DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimOrganizationUnitLevel5ID] PRIMARY KEY CLUSTERED ([DimOrganizationUnitLevel5ID] ASC),
    CONSTRAINT [fk_DimOrganizationUnitLevel5_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_DimOrganizationUnitLevel5_DimOrganizationUnitLevel4ID] FOREIGN KEY ([DimOrganizationUnitLevel4ID]) REFERENCES [Shared].[DimOrganizationUnitLevel4] ([DimOrganizationUnitLevel4ID]),
    CONSTRAINT [fk_DimOrganizationUnitLevel5_DimOrganizationUnitTypeID] FOREIGN KEY ([DimOrganizationUnitTypeID]) REFERENCES [Classification].[DimOrganizationUnitType] ([DimOrganizationUnitTypeID])
);






GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimOrganizationUnitLevel5_SourceKey]
    ON [Shared].[DimOrganizationUnitLevel5]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel5';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel4ID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel5';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel5';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel5';


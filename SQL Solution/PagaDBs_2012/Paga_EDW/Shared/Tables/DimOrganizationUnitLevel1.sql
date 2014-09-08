CREATE TABLE [Shared].[DimOrganizationUnitLevel1] (
    [DimOrganizationUnitLevel1ID] INT           NOT NULL,
    [SourceKey]                   VARCHAR (255) NOT NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [DimOrganizationID]           INT           NOT NULL,
    [DimOrganizationUnitTypeID]   INT           NOT NULL,
    [DimDealerID]                 INT           NOT NULL,
    [IdentificationNumber]        VARCHAR (20)  NULL,
    [SourceKeyHash]               BIGINT        NOT NULL,
    [DeltaHash]                   BIGINT        NOT NULL,
    [sys_ModifiedBy]              VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]              DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]               VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]               DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimOrganizationUnitLevel1ID] PRIMARY KEY CLUSTERED ([DimOrganizationUnitLevel1ID] ASC),
    CONSTRAINT [fk_DimOrganizationUnitLevel1_DimDealerID] FOREIGN KEY ([DimDealerID]) REFERENCES [Shared].[DimDealer] ([DimDealerID]),
    CONSTRAINT [fk_DimOrganizationUnitLevel1_DimOrganizationID] FOREIGN KEY ([DimOrganizationID]) REFERENCES [Shared].[DimOrganization] ([DimOrganizationID]),
    CONSTRAINT [fk_DimOrganizationUnitLevel1_DimOrganizationUnitTypeID] FOREIGN KEY ([DimOrganizationUnitTypeID]) REFERENCES [Classification].[DimOrganizationUnitType] ([DimOrganizationUnitTypeID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimOrganizationUnitLevel1_SourceKey]
    ON [Shared].[DimOrganizationUnitLevel1]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'DeltaHash';


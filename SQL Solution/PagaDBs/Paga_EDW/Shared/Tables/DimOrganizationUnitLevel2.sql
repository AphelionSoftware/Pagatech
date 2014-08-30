CREATE TABLE [Shared].[DimOrganizationUnitLevel2] (
    [DimOrganizationUnitLevel2ID] INT           NOT NULL,
    [SourceKey]                   VARCHAR (255) NOT NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [Code]                        VARCHAR (50)  NOT NULL,
    [DimOrganizationID]           INT           NOT NULL,
    [DimOrganizationUnitLevel1ID] INT           NOT NULL,
    [DimOrganizationUnitTypeID]   INT           NOT NULL,
    [DimDealerID]                 INT           NOT NULL,
    [IdentificationNumber]        VARCHAR (20)  NULL,
    [SourceKeyHash]               BIGINT        NOT NULL,
    [DeltaHash]                   BIGINT        NOT NULL,
    [sys_ModifiedBy]              VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]              DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]               VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]               DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimOrganizationUnitLevel2ID] PRIMARY KEY CLUSTERED ([DimOrganizationUnitLevel2ID] ASC),
    CONSTRAINT [fk_DimOrganizationUnitLevel2_DimDealerID] FOREIGN KEY ([DimDealerID]) REFERENCES [Shared].[DimDealer] ([DimDealerID]),
    CONSTRAINT [fk_DimOrganizationUnitLevel2_DimOrganizationID] FOREIGN KEY ([DimOrganizationID]) REFERENCES [Shared].[DimOrganization] ([DimOrganizationID]),
    CONSTRAINT [fk_DimOrganizationUnitLevel2_DimOrganizationUnitLevel1ID] FOREIGN KEY ([DimOrganizationUnitLevel1ID]) REFERENCES [Shared].[DimOrganizationUnitLevel1] ([DimOrganizationUnitLevel1ID]),
    CONSTRAINT [fk_DimOrganizationUnitLevel2_DimOrganizationUnitTypeID] FOREIGN KEY ([DimOrganizationUnitTypeID]) REFERENCES [Classification].[DimOrganizationUnitType] ([DimOrganizationUnitTypeID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimOrganizationUnitLevel2_SourceKey]
    ON [Shared].[DimOrganizationUnitLevel2]([SourceKey] ASC);


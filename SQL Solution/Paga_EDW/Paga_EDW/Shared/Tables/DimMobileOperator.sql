CREATE TABLE [Shared].[DimMobileOperator] (
    [DimMobileOperatorID] INT           NOT NULL,
    [SourceKey]           VARCHAR (255) NOT NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [Code]                VARCHAR (50)  NOT NULL,
    [DimOrganizationID]   INT           NOT NULL,
    [IsActive]            BIT           NULL,
    [SourceKeyHash]       BIGINT        NOT NULL,
    [DeltaHash]           BIGINT        NOT NULL,
    [sysModifiedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sysModifiedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [sysCreatedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sysCreatedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimMobileOperatorID] PRIMARY KEY CLUSTERED ([DimMobileOperatorID] ASC),
    CONSTRAINT [uc_DimMobileOperator_DimOrganizationID] UNIQUE NONCLUSTERED ([DimOrganizationID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimMobileOperator_SourceKey]
    ON [Shared].[DimMobileOperator]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'IsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DeltaHash';


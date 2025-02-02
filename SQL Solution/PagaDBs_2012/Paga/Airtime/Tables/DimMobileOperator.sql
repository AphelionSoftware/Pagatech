﻿CREATE TABLE [Airtime].[DimMobileOperator] (
    [DimMobileOperatorID] INT           NOT NULL,
    [SourceKey]           VARCHAR (255) NOT NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [Code]                VARCHAR (50)  NOT NULL,
    [DimOrganizationID]   INT           NOT NULL,
    [IsActive]            BIT           NULL,
    [SourceKeyHash]       BIGINT        NOT NULL,
    [DeltaHash]           BIGINT        NOT NULL,
    [sys_ModifiedBy]      VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]      DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]       VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimMobileOperatorID] PRIMARY KEY CLUSTERED ([DimMobileOperatorID] ASC),
    CONSTRAINT [fk_DimMobileOperator_DimOrganizationID] FOREIGN KEY ([DimOrganizationID]) REFERENCES [Shared].[DimOrganization] ([DimOrganizationID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimMobileOperator_SourceKey]
    ON [Airtime].[DimMobileOperator]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'IsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Airtime', @level1type = N'TABLE', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DeltaHash';


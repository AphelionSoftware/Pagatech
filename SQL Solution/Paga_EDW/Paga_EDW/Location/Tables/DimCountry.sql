CREATE TABLE [Location].[DimCountry] (
    [DimCountryID]   INT           NOT NULL,
    [SourceKey]      VARCHAR (255) NOT NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [Code]           VARCHAR (50)  NOT NULL,
    [Country]        VARCHAR (255) NULL,
    [ISOCode]        CHAR (3)      NULL,
    [SourceKeyHash]  BIGINT        NOT NULL,
    [DeltaHash]      BIGINT        NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimCountryID] PRIMARY KEY CLUSTERED ([DimCountryID] ASC),
    CONSTRAINT [uc_DimCountry_SourceKey] UNIQUE NONCLUSTERED ([SourceKey] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimCountry_SourceKey]
    ON [Location].[DimCountry]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Country', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ISOCode', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'ISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Location', @level1type = N'TABLE', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'DeltaHash';


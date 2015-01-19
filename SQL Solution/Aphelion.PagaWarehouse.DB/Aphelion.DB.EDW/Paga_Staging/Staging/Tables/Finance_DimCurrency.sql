CREATE TABLE [Staging].[Finance_DimCurrency] (
    [DimCurrencyID]        INT           NULL,
    [DeltaHash]            BIGINT        NULL,
    [ISOCode]              CHAR (3)      NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [SourceKeyHash]        BIGINT        NULL,
    [Symbol]               VARCHAR (3)   NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL
);






GO
CREATE UNIQUE CLUSTERED INDEX [ix_Finance_DimCurrency]
    ON [Staging].[Finance_DimCurrency]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);


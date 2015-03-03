CREATE TABLE [Updates].[Finance_DimBank] (
    [SourceKey]            INT           NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [BankAccountLinkType]  VARCHAR (255) NOT NULL,
    [DimOrganizationID]    INT           NOT NULL,
    [SupportsDebit]        BIT           NULL,
    [SupportsCredit]       BIT           NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Finance_DimBank_SourceKey]
    ON [Updates].[Finance_DimBank]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);


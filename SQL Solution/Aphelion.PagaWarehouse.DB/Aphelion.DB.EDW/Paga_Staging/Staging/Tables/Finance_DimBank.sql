CREATE TABLE [Staging].[Finance_DimBank] (
    [BankAccountLinkType]      VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [SourceKey]                INT           NOT NULL,
    [SupportsCredit]           BIT           NULL,
    [SupportsDebit]            BIT           NULL,
    [DimOrganizationSourceKey] INT           NOT NULL,
    [SYS_CHANGE_VERSION]       BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]     CHAR (1)      DEFAULT ('I') NOT NULL
);


















GO



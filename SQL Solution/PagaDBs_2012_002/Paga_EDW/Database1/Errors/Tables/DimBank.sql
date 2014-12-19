CREATE TABLE [Errors].[DimBank] (
    [QueueID]                  INT           NOT NULL,
    [SSISErrorCode]            INT           NOT NULL,
    [SSISErrorColumn]          INT           NOT NULL,
    [PackageName]              VARCHAR (255) NOT NULL,
    [ErrorType]                VARCHAR (255) NOT NULL,
    [DimBankID]                INT           NULL,
    [BankAccountLinkType]      VARCHAR (255) NOT NULL,
    [DeltaHash]                BIGINT        NULL,
    [DimOrganizationSourceKey] VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [SourceKeyHash]            BIGINT        NULL,
    [SupportsCredit]           BIT           NULL,
    [SupportsDebit]            BIT           NULL,
    [DimOrganizationID]        INT           NULL
);


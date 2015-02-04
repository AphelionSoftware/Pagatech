CREATE TABLE [Errors].[Finance_DimBank] (
    [QueueID]                  INT           NOT NULL,
    [SSISErrorCode]            INT           NOT NULL,
    [SSISErrorColumn]          INT           NOT NULL,
    [PackageName]              VARCHAR (255) NOT NULL,
    [ErrorType]                VARCHAR (255) NOT NULL,
    [BankAccountLinkType]      VARCHAR (255) NOT NULL,
    [DimOrganizationSourceKey] INT           NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [SourceKey]                INT           NOT NULL,
    [SupportsCredit]           BIT           NULL,
    [SupportsDebit]            BIT           NULL
);










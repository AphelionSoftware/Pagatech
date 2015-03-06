CREATE TABLE [Errors].[Finance_DimBank] (
    [QueueID]               INT           NOT NULL,
    [SSISErrorCode]         INT           NOT NULL,
    [SSISErrorColumn]       INT           NOT NULL,
    [PackageName]           VARCHAR (255) NOT NULL,
    [ErrorType]             VARCHAR (255) NOT NULL,
    [SourceKey]             INT           NOT NULL,
    [Name]                  VARCHAR (255) NOT NULL,
    [BankAccountLinkType]   VARCHAR (255) NOT NULL,
    [OrganizationSourceKey] INT           NOT NULL,
    [SupportsDebit]         BIT           NULL,
    [SupportsCredit]        BIT           NULL,
    [SYS_CHANGE_VERSION]    BIGINT        NOT NULL,
    [SYS_CHANGE_OPERATION]  CHAR (1)      NOT NULL
);


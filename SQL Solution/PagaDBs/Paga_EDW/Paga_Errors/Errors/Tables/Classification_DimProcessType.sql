CREATE TABLE [Errors].[Classification_DimProcessType] (
    [QueueID]                      INT            NOT NULL,
    [SSISErrorCode]                INT            NOT NULL,
    [SSISErrorColumn]              INT            NOT NULL,
    [PackageName]                  VARCHAR (255)  NOT NULL,
    [ErrorType]                    VARCHAR (255)  NOT NULL,
    [DeltaHash]                    BIGINT         NULL,
    [DescriptionText]              VARCHAR (1000) NULL,
    [DimProcessTypeGroupSourceKey] VARCHAR (255)  NOT NULL,
    [DimProcessTypeID]             INT            NULL,
    [Name]                         VARCHAR (255)  NOT NULL,
    [SourceKey]                    VARCHAR (255)  NOT NULL,
    [SourceKeyHash]                BIGINT         NULL
);


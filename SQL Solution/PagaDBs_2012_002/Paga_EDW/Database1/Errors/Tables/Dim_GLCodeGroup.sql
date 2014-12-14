CREATE TABLE [Errors].[Dim_GLCodeGroup] (
    [QueueID]          INT            NOT NULL,
    [SSISErrorCode]    INT            NOT NULL,
    [SSISErrorColumn]  INT            NOT NULL,
    [PackageName]      VARCHAR (255)  NOT NULL,
    [ErrorType]        VARCHAR (255)  NOT NULL,
    [COA_SourceKey]    INT            NULL,
    [GLCodeRange]      VARCHAR (50)   NULL,
    [Name]             NVARCHAR (100) NULL,
    [SourceKey]        INT            NULL,
    [DeltaHash]        BIGINT         NULL,
    [DimGLCodeGroupID] INT            NULL,
    [SourceKeyHash]    BIGINT         NULL,
    [DimCOAID]         INT            NULL
);


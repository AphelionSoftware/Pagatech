CREATE TABLE [Staging].[Shared_DimRole] (
    [DimRoleID]            INT            NULL,
    [DeltaHash]            BIGINT         NULL,
    [Name]                 VARCHAR (255)  NOT NULL,
    [SourceKey]            INT            NOT NULL,
    [SourceKeyHash]        BIGINT         NULL,
    [SystemDescription]    VARCHAR (255)  NOT NULL,
    [TextDesciption]       VARCHAR (1000) NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       DEFAULT ('I') NOT NULL
);








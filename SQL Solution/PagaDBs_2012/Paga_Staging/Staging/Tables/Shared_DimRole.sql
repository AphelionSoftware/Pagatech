CREATE TABLE [Staging].[Shared_DimRole] (
    [DimRoleID]        INT            NULL,
    [Code]             VARCHAR (50)   NOT NULL,
    [Name]             VARCHAR (255)  NOT NULL,
    [SourceKey]        VARCHAR (255)  NOT NULL,
    [TextDesciption]   VARCHAR (1000) NULL,
    [change_operation] CHAR (1)       DEFAULT ((1)) NOT NULL
);






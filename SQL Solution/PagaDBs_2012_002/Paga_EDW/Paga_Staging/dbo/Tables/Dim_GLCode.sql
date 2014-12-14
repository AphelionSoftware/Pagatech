CREATE TABLE [dbo].[Dim_GLCode] (
    [SourceKey]             INT            IDENTITY (1, 1) NOT NULL,
    [GLCodeGroup_SourceKey] INT            NOT NULL,
    [Code]                  INT            NULL,
    [TextDescription]       NVARCHAR (100) NULL,
    [IsNormalDebit]         BIT            NULL,
    [Key]                   VARCHAR (100)  NULL,
    [Name]                  VARCHAR (100)  NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCode_SourceKey]
    ON [dbo].[Dim_GLCode]([SourceKey] ASC);


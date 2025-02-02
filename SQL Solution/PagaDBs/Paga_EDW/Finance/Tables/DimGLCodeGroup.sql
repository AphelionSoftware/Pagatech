﻿CREATE TABLE [Finance].[DimGLCodeGroup] (
    [DimGLCodeGroupID] INT           NOT NULL,
    [SourceKey]        VARCHAR (255) NOT NULL,
    [Name]             VARCHAR (255) NOT NULL,
    [Code]             VARCHAR (50)  NOT NULL,
    [DimGLHeadingID]   INT           NOT NULL,
    [GLCodeRange]      VARCHAR (255) NULL,
    [SourceKeyHash]    BIGINT        NOT NULL,
    [DeltaHash]        BIGINT        NOT NULL,
    [sys_ModifiedBy]   VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]   DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]    VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]    DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimGLCodeGroupID] PRIMARY KEY CLUSTERED ([DimGLCodeGroupID] ASC),
    CONSTRAINT [fk_DimGLCodeGroup_DimGLHeadingID] FOREIGN KEY ([DimGLHeadingID]) REFERENCES [Finance].[DimGLHeading] ([DimGLHeadingID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCodeGroup_SourceKey]
    ON [Finance].[DimGLCodeGroup]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimGLHeadingID', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup', @level2type = N'COLUMN', @level2name = N'DimGLHeadingID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimGLCodeGroup', @level2type = N'COLUMN', @level2name = N'DeltaHash';


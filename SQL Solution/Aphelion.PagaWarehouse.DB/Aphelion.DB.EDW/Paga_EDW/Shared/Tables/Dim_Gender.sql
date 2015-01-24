CREATE TABLE [Shared].[DimGender] (
    [DimGenderID]    INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]      VARCHAR (255) NOT NULL,
    [Name]           VARCHAR (255) NULL,
    [SourceKeyHash]  BIGINT        NULL,
    [DeltaHash]      BIGINT        NULL,
    [sys_CreatedBy]  VARCHAR (255) NOT NULL,
    [sys_CreatedOn]  DATETIME      NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) NOT NULL,
    [sys_ModifiedOn] DATETIME      NOT NULL,
    CONSTRAINT [pk_DimGender] PRIMARY KEY CLUSTERED ([DimGenderID] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGender_SourceKey]
    ON [Shared].[DimGender]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimGender';




GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimGender';


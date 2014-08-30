CREATE TABLE [Shared].DimDealer (
    [DimDealerID]                   INT             NOT NULL,
    [SourceKey]                   VARCHAR (255)   NOT NULL,
    [Name]                        VARCHAR (255)   NOT NULL,
    [Code]                        VARCHAR (50)    NOT NULL,
    [DateOfBirthID]               INT             NOT NULL,
    [DimRoleID]                   INT             NOT NULL,
    [FirstName]                   VARCHAR (255)   NULL,
    [MiddleName]                  VARCHAR (255)   NULL,
    [LastName]                    VARCHAR (255)   NULL,
    [Sex]                         CHAR (1)        NULL,
    [PhoneNumber]                 VARBINARY (256) NULL,
    [Email]                       VARCHAR (100)   NULL,
    [IsEnabled]                   BIT             NULL,
    [SourceKeyHash]               BIGINT          NOT NULL,
    [DeltaHash]                   BIGINT          NOT NULL,
    [sys_ModifiedBy]              VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]              DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]               VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]               DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimDealerID] PRIMARY KEY CLUSTERED ([DimDealerID] ASC),
    CONSTRAINT [fk_DimDealer_DateOfBirthID] FOREIGN KEY ([DateOfBirthID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_DimDealer_DimRoleID] FOREIGN KEY ([DimRoleID]) REFERENCES [Shared].[DimRole] ([DimRoleID])
);






GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimDealer_SourceKey]
    ON [Shared].[DimDealer]([SourceKey] ASC);

GO

EXECUTE sp_addextendedproperty
@name=N'ExcludeFromOLAP',
@value=N'true' , 
@level0type=N'SCHEMA',
@level0name=N'Shared', 
@level1type=N'TABLE',
@level1name=N'DimDealer',
@level2type=N'COLUMN',
@level2name=N'DateOfBirthID'

GO
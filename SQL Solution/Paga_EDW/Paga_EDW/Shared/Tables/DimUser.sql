CREATE TABLE [Shared].[DimUser] (
    [DimUserID]                   INT             NOT NULL,
    [SourceKey]                   VARCHAR (255)   NOT NULL,
    [Name]                        VARCHAR (255)   NOT NULL,
    [Code]                        VARCHAR (50)    NOT NULL,
    [DimPagaAccountID]            INT             NOT NULL,
    [DimPagaAccountUserTypeID]    INT             NOT NULL,
    [DimOrganizationUnitLevel5ID] INT             NOT NULL,
    [FirstName]                   VARCHAR (255)   NULL,
    [MiddleName]                  VARCHAR (255)   NULL,
    [LastName]                    VARCHAR (255)   NULL,
    [Sex]                         CHAR (1)        NULL,
    [DateOfBirthID]               INT             NOT NULL,
    [PhoneNumber]                 VARBINARY (256) NULL,
    [Email]                       VARCHAR (100)   NULL,
    [IsEnabled]                   BIT             NULL,
    [SourceKeyHash]               BIGINT          NOT NULL,
    [DeltaHash]                   BIGINT          NOT NULL,
    [sysModifiedBy]               VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sysModifiedOn]               DATETIME        DEFAULT (getdate()) NOT NULL,
    [sysCreatedBy]                VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sysCreatedOn]                DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimUserID] PRIMARY KEY CLUSTERED ([DimUserID] ASC),
    CONSTRAINT [uc_DimUser_DateOfBirthID] UNIQUE NONCLUSTERED ([DateOfBirthID] ASC),
    CONSTRAINT [uc_DimUser_DimOrganizationUnitLevel5ID] UNIQUE NONCLUSTERED ([DimOrganizationUnitLevel5ID] ASC),
    CONSTRAINT [uc_DimUser_DimPagaAccountID] UNIQUE NONCLUSTERED ([DimPagaAccountID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimUser_SourceKey]
    ON [Shared].[DimUser]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountUserTypeID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'Sex';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DateOfBirthID', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'PhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'IsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DeltaHash';


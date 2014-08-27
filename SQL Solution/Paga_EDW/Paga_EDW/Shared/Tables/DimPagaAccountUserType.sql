﻿CREATE TABLE [Shared].[DimPagaAccountUserType] (
    [DimPagaAccountUserTypeID] INT            NOT NULL,
    [SourceKey]                VARCHAR (255)  NOT NULL,
    [Name]                     VARCHAR (255)  NOT NULL,
    [Code]                     VARCHAR (50)   NOT NULL,
    [Description]              VARCHAR (1000) NOT NULL,
    [SourceKeyHash]            BIGINT         NOT NULL,
    [DeltaHash]                BIGINT         NOT NULL,
    [sys_ModifiedBy]           VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]           DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]            VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]            DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimPagaAccountUserTypeID] PRIMARY KEY CLUSTERED ([DimPagaAccountUserTypeID] ASC),
    CONSTRAINT [uc_DimPagaAccountUserType_SourceKey] UNIQUE NONCLUSTERED ([SourceKey] ASC)
);


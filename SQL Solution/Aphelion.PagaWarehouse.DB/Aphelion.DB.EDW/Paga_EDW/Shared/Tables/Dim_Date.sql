CREATE TABLE [Shared].[DimDate] (
    [DateSK]                INT            IDENTITY (1, 1) NOT NULL,
    [DateID]                INT            NOT NULL,
    [Date]                  DATETIME       NOT NULL,
    [Day]                   INT            NOT NULL,
    [DaySuffix]             CHAR (3)       NOT NULL,
    [USDayOfWeek]           VARCHAR (9)    NOT NULL,
    [DayOfWeek]             VARCHAR (9)    NOT NULL,
    [DOWInMonth]            INT            NOT NULL,
    [DayOfYear]             INT            NOT NULL,
    [WeekOfYear]            INT            NOT NULL,
    [WeekOfMonth]           INT            NOT NULL,
    [MonthNumber]           INT            NOT NULL,
    [MonthName]             VARCHAR (9)    NOT NULL,
    [Quarter]               INT            NOT NULL,
    [QuarterName]           VARCHAR (255)  NOT NULL,
    [YearName]              CHAR (4)       NOT NULL,
    [YearNumber]            INT            NOT NULL,
    [StandardDate]          VARCHAR (10)   NULL,
    [IsPublicHoliday]       BIT            CONSTRAINT [DF_DimDate_IsPublicHoliday] DEFAULT ((0)) NULL,
    [HolidayText]           VARCHAR (50)   NULL,
    [FinancialYearNumber]   INT            NOT NULL,
    [FinancialYearName]     CHAR (7)       NOT NULL,
    [FinancialPeriodNumber] INT            NOT NULL,
    [FinancialPeriodName]   VARCHAR (50)   NOT NULL,
    [Version]               INT            CONSTRAINT [DF_DimDate_Version] DEFAULT ((0)) NOT NULL,
    [sys_CreatedOn]         DATETIME       CONSTRAINT [DF_DimDate_sys_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]         NVARCHAR (255) CONSTRAINT [DF_DimDate_sys_CreatedBy] DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]        DATETIME       CONSTRAINT [DF_DimDate_sys_ModifiedOn] DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]        NVARCHAR (255) CONSTRAINT [DF_DimDate_sys_ModifiedBy] DEFAULT (user_name()) NOT NULL,
    [IsActive]              INT            CONSTRAINT [DF_DimDate_Active] DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]    BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]  CHAR (1)       DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DateID] PRIMARY KEY CLUSTERED ([DateID] ASC)
);












GO



GO



GO



GO



GO



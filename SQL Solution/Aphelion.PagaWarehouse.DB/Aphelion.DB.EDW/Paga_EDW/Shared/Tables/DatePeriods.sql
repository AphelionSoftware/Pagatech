CREATE TABLE [Shared].[DatePeriods] (
    [ID]                   INT            IDENTITY (1, 1) NOT NULL,
    [PeriodType]           CHAR (3)       NOT NULL,
    [Period]               VARCHAR (7)    NOT NULL,
    [Aggregate]            VARCHAR (50)   NOT NULL,
    [Number]               SMALLINT       NOT NULL,
    [PeriodName]           VARCHAR (50)   NOT NULL,
    [OrderNumber]          INT            CONSTRAINT [DF_DatePeriods_OrderNumber] DEFAULT ((0)) NOT NULL,
    [Version]              INT            DEFAULT ((0)) NOT NULL,
    [sys_CreatedOn]        DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]        NVARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]       DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]       NVARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [IsActive]             BIT            DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       DEFAULT ('I') NOT NULL,
    CONSTRAINT [CK_DatePeriods_Aggregate] CHECK ([Aggregate]='Offset' OR [Aggregate]='ToDate'),
    CONSTRAINT [CK_DatePeriods_Period] CHECK ([Period]='Year' OR [Period]='Quarter' OR [Period]='Month' OR [Period]='Day' OR [Period]='YTD' OR [Period]='MTD' OR [Period]='QTD'),
    CONSTRAINT [CK_DatePeriods_PeriodType] CHECK ([PeriodType]='FIN' OR [PeriodType]='CAL')
);



